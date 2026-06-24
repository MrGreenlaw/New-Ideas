import SwiftUI

struct VehiclePriceSection: View {
    @ObservedObject var viewModel: OTDCalculatorViewModel

    var body: some View {
        SectionCard {
            CurrencyField(
                title: "Vehicle Price",
                symbol: "$",
                placeholder: "0",
                text: $viewModel.vehiclePriceText,
                tint: .otdNavy
            )
        }
    }
}
