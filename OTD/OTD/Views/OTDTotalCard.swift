import SwiftUI

/// The typographic hero of the app. Always-visible out-the-door total with a
/// soft breathing scale + shadow pulse whenever the number changes.
struct OTDTotalCard: View {
    let total: Double
    let savings: Double

    @State private var pulse: Bool = false

    var body: some View {
        VStack(spacing: 8) {
            Text("OUT THE DOOR")
                .font(.system(.subheadline, design: .rounded, weight: .semibold))
                .tracking(2)
                .foregroundStyle(.white.opacity(0.85))

            AnimatingNumber(
                value: total,
                font: .system(size: 52, weight: .semibold, design: .rounded),
                color: .white
            )

            if savings > 0 {
                Text("\(AnimatingNumber.currency(savings)) off with trade-in & down")
                    .font(.footnote)
                    .foregroundStyle(.white.opacity(0.8))
                    .transition(.opacity.combined(with: .move(edge: .top)))
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 32)
        .padding(.horizontal, 24)
        .background(
            RoundedRectangle(cornerRadius: 24, style: .continuous)
                .fill(.otdCoral)
        )
        .scaleEffect(pulse ? 1.015 : 1.0)
        .shadow(
            color: .otdCoral.opacity(pulse ? 0.45 : 0.25),
            radius: pulse ? 24 : 14,
            y: pulse ? 12 : 8
        )
        .onChange(of: total) { _, _ in
            withAnimation(.spring(response: 0.45, dampingFraction: 0.65)) {
                pulse = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.28) {
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                    pulse = false
                }
            }
        }
    }
}
