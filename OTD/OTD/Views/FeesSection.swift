import SwiftUI

struct FeesSection: View {
    @ObservedObject var viewModel: OTDCalculatorViewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text("Fees & Taxes")
                    .font(.system(.headline, weight: .semibold))
                    .foregroundStyle(.otdNavy)
                Spacer()
                Text(AnimatingNumber.currency(viewModel.totalFees))
                    .font(.system(.subheadline, design: .rounded, weight: .semibold))
                    .monospacedDigit()
                    .foregroundStyle(.otdMuted)
            }

            VStack(spacing: 12) {
                ForEach(viewModel.fees) { fee in
                    FeeRowView(viewModel: viewModel, fee: fee)
                        .transition(
                            .move(edge: .top).combined(with: .opacity)
                        )
                }
            }

            AddFeeButton {
                viewModel.addCustomFee()
            }
        }
    }
}
