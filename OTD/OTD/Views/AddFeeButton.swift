import SwiftUI

struct AddFeeButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Image(systemName: "plus.circle.fill")
                    .font(.body)
                Text("Add a fee")
                    .font(.system(.body, weight: .semibold))
            }
            .foregroundStyle(.otdSky)
            .frame(maxWidth: .infinity)
            .frame(minHeight: 52)
            .background(
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .strokeBorder(.otdSky.opacity(0.4), style: StrokeStyle(lineWidth: 1.5, dash: [6, 5]))
            )
        }
        .accessibilityLabel("Add a custom fee")
    }
}
