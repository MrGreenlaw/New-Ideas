"""Cut a photo of a handwritten page into enlarged, contrast-boosted strips.

Reading 2-3 ruled lines at 2x magnification is far more accurate than reading
the whole page at once, especially for fast cursive.

usage: python3 -I strips.py <image> <out_dir> [strip_height_px] [scale]
"""
import os
import sys

from PIL import Image, ImageEnhance, ImageOps


def main():
    src, out = sys.argv[1], sys.argv[2]
    step = int(sys.argv[3]) if len(sys.argv) > 3 else 260
    scale = int(sys.argv[4]) if len(sys.argv) > 4 else 2
    os.makedirs(out, exist_ok=True)
    im = Image.open(src).convert("L")
    w, h = im.size
    overlap = step // 10  # keep descenders that cross the cut
    y, n = 0, 0
    while y < h:
        c = im.crop((0, max(0, y - overlap), w, min(h, y + step + overlap)))
        c = ImageOps.autocontrast(c, cutoff=2)
        c = ImageEnhance.Contrast(c).enhance(1.6)
        c = c.resize((c.width * scale, c.height * scale), Image.LANCZOS)
        name = os.path.join(out, f"strip_{n:02d}_y{y}.png")
        c.save(name)
        print(name)
        y += step
        n += 1


if __name__ == "__main__":
    main()
