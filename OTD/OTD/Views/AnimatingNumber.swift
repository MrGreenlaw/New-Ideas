import SwiftUI

/// A currency label that rolls smoothly between values. Uses `.numericText`
/// content transitions driven by a low-damping spring for the floaty, coastal
/// counter feel — digits glide rather than snap as the user types.
struct AnimatingNumber: View {
    var value: Double
    var font: Font
    var color: Color

    var body: some View {
        Text(Self.currency(value))
            .font(font)
            .monospacedDigit()
            .foregroundStyle(color)
            .contentTransition(.numericText(value: value))
            .animation(.spring(response: 0.55, dampingFraction: 0.7), value: value)
    }

    static func currency(_ amount: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = "USD"
        formatter.maximumFractionDigits = 0
        formatter.minimumFractionDigits = 0
        return formatter.string(from: NSNumber(value: amount)) ?? "$0"
    }
}
