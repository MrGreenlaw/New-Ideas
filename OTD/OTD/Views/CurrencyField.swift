import SwiftUI

/// A labeled numeric entry field used throughout the calculator. Keeps touch
/// targets ≥ 44pt and uses the decimal keypad for fast lot-side entry.
struct CurrencyField: View {
    let title: String
    let symbol: String
    let placeholder: String
    @Binding var text: String
    var tint: Color = .otdNavy

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.subheadline)
                .foregroundStyle(.otdMuted)

            HStack(spacing: 8) {
                Text(symbol)
                    .font(.system(.title3, design: .rounded, weight: .semibold))
                    .foregroundStyle(.otdMuted)

                TextField(placeholder, text: $text)
                    .font(.system(.title3, design: .rounded, weight: .semibold))
                    .foregroundStyle(tint)
                    .keyboardType(.decimalPad)
                    .monospacedDigit()
            }
            .padding(.horizontal, 16)
            .frame(minHeight: 52)
            .background(.otdBackground, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
    }
}
