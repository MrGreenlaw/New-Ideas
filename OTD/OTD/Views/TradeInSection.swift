import SwiftUI

struct TradeInSection: View {
    @ObservedObject var viewModel: OTDCalculatorViewModel

    var body: some View {
        SectionCard {
            VStack(alignment: .leading, spacing: 16) {
                Text("Paying Less Upfront")
                    .font(.system(.headline, weight: .semibold))
                    .foregroundStyle(.otdNavy)

                CurrencyField(
                    title: "Trade-In Value",
                    symbol: "$",
                    placeholder: "0",
                    text: $viewModel.tradeInText,
                    tint: .otdNavy
                )

                CurrencyField(
                    title: "Down Payment",
                    symbol: "$",
                    placeholder: "0",
                    text: $viewModel.downPaymentText,
                    tint: .otdNavy
                )
            }
        }
    }
}
