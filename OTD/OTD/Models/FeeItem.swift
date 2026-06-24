import Foundation

struct FeeItem: Identifiable {
    let id: UUID
    var label: String
    var value: Double
    var type: FeeType
    var isRemovable: Bool

    enum FeeType: String, CaseIterable {
        case flat
        case percent
    }

    init(
        id: UUID = UUID(),
        label: String,
        value: Double = 0,
        type: FeeType = .flat,
        isRemovable: Bool = true
    ) {
        self.id = id
        self.label = label
        self.value = value
        self.type = type
        self.isRemovable = isRemovable
    }

    func resolvedAmount(vehiclePrice: Double) -> Double {
        switch type {
        case .flat:
            return value
        case .percent:
            return vehiclePrice * (value / 100.0)
        }
    }
}
