import SwiftUI

struct ResetButton: View {
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            HStack(spacing: 8) {
                Image(systemName: "arrow.counterclockwise")
                    .font(.subheadline)
                Text("Start Over")
                    .font(.system(.body, weight: .semibold))
            }
            .foregroundStyle(.otdMuted)
            .frame(maxWidth: .infinity)
            .frame(minHeight: 52)
            .background(.otdSurface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
        }
        .accessibilityLabel("Reset all values")
    }
}
