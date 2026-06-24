import Foundation
import SwiftUI

final class OTDCalculatorViewModel: ObservableObject {
    @Published var vehiclePriceText: String = ""
    @Published var tradeInText: String = ""
    @Published var downPaymentText: String = ""
    @Published var fees: [FeeItem] = []

    init() {
        fees = Self.defaultFees()
    }

    var vehiclePrice: Double {
        Self.parseNumber(vehiclePriceText)
    }

    var tradeInValue: Double {
        Self.parseNumber(tradeInText)
    }

    var downPayment: Double {
        Self.parseNumber(downPaymentText)
    }

    var totalFees: Double {
        fees.reduce(0) { $0 + $1.resolvedAmount(vehiclePrice: vehiclePrice) }
    }

    var totalDeductions: Double {
        tradeInValue + downPayment
    }

    var outTheDoorTotal: Double {
        max(0, vehiclePrice + totalFees - totalDeductions)
    }

    func addCustomFee() {
        let fee = FeeItem(label: "", value: 0, type: .flat, isRemovable: true)
        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
            fees.append(fee)
        }
    }

    func removeFee(at id: UUID) {
        withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
            fees.removeAll { $0.id == id }
        }
    }

    func reset() {
        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
            vehiclePriceText = ""
            tradeInText = ""
            downPaymentText = ""
            fees = Self.defaultFees()
        }
    }

    func updateFeeValue(id: UUID, text: String) {
        guard let index = fees.firstIndex(where: { $0.id == id }) else { return }
        fees[index].value = Self.parseNumber(text)
    }

    func updateFeeLabel(id: UUID, label: String) {
        guard let index = fees.firstIndex(where: { $0.id == id }) else { return }
        fees[index].label = label
    }

    func updateFeeType(id: UUID, type: FeeItem.FeeType) {
        guard let index = fees.firstIndex(where: { $0.id == id }) else { return }
        fees[index].type = type
    }

    private static func defaultFees() -> [FeeItem] {
        [
            FeeItem(label: "Sales Tax", value: 0, type: .percent, isRemovable: false),
            FeeItem(label: "Title & Registration", value: 0, type: .flat, isRemovable: false),
            FeeItem(label: "Doc Fee", value: 0, type: .flat, isRemovable: false),
            FeeItem(label: "Dealer Prep", value: 0, type: .flat, isRemovable: true),
        ]
    }

    private static func parseNumber(_ text: String) -> Double {
        let cleaned = text.replacingOccurrences(of: ",", with: "")
            .replacingOccurrences(of: "$", with: "")
            .replacingOccurrences(of: "%", with: "")
            .trimmingCharacters(in: .whitespaces)
        return Double(cleaned) ?? 0
    }
}
