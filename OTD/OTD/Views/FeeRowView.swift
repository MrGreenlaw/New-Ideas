import SwiftUI

struct FeeRowView: View {
    @ObservedObject var viewModel: OTDCalculatorViewModel
    let fee: FeeItem

    @State private var labelText: String
    @State private var valueText: String

    init(viewModel: OTDCalculatorViewModel, fee: FeeItem) {
        self.viewModel = viewModel
        self.fee = fee
        _labelText = State(initialValue: fee.label)
        _valueText = State(initialValue: fee.value == 0 ? "" : Self.trimmed(fee.value))
    }

    private var resolvedAmount: Double {
        fee.resolvedAmount(vehiclePrice: viewModel.vehiclePrice)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack(spacing: 12) {
                labelView

                Spacer(minLength: 8)

                if fee.type == .percent {
                    Text(AnimatingNumber.currency(resolvedAmount))
                        .font(.system(.footnote, design: .rounded, weight: .semibold))
                        .monospacedDigit()
                        .foregroundStyle(.otdSky)
                        .transition(.opacity)
                }

                if fee.isRemovable {
                    Button {
                        viewModel.removeFee(at: fee.id)
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .font(.title3)
                            .foregroundStyle(.otdMuted.opacity(0.6))
                            .frame(width: 44, height: 44)
                    }
                    .accessibilityLabel("Remove \(fee.label.isEmpty ? "fee" : fee.label)")
                }
            }

            HStack(spacing: 8) {
                Text(fee.type == .percent ? "%" : "$")
                    .font(.system(.body, design: .rounded, weight: .semibold))
                    .foregroundStyle(.otdMuted)
                    .frame(width: 20)

                TextField("0", text: $valueText)
                    .font(.system(.body, design: .rounded, weight: .semibold))
                    .foregroundStyle(.otdNavy)
                    .keyboardType(.decimalPad)
                    .monospacedDigit()
                    .onChange(of: valueText) { _, newValue in
                        viewModel.updateFeeValue(id: fee.id, text: newValue)
                    }
            }
            .padding(.horizontal, 16)
            .frame(minHeight: 48)
            .background(.otdBackground, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
        }
        .padding(16)
        .background(.otdSurface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    }

    @ViewBuilder
    private var labelView: some View {
        if fee.isRemovable {
            TextField("Fee name", text: $labelText)
                .font(.system(.body, weight: .semibold))
                .foregroundStyle(.otdNavy)
                .onChange(of: labelText) { _, newValue in
                    viewModel.updateFeeLabel(id: fee.id, label: newValue)
                }
        } else {
            Text(fee.label)
                .font(.system(.body, weight: .semibold))
                .foregroundStyle(.otdNavy)
        }
    }

    private static func trimmed(_ value: Double) -> String {
        if value == value.rounded() {
            return String(Int(value))
        }
        return String(value)
    }
}
