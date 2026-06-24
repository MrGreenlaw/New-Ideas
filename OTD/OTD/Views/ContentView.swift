import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = OTDCalculatorViewModel()

    var body: some View {
        ZStack(alignment: .bottom) {
            Color.otdBackground.ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    header

                    VehiclePriceSection(viewModel: viewModel)
                    FeesSection(viewModel: viewModel)
                    TradeInSection(viewModel: viewModel)
                    ResetButton(action: viewModel.reset)

                    // Spacer so content can scroll clear of the sticky total card.
                    Color.clear.frame(height: 180)
                }
                .padding(.horizontal, 20)
                .padding(.top, 8)
            }
            .scrollDismissesKeyboard(.interactively)

            stickyTotal
        }
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") { hideKeyboard() }
                    .foregroundStyle(.otdCoral)
            }
        }
    }

    private func hideKeyboard() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }

    private var header: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading, spacing: 4) {
                Text("OTD")
                    .font(.system(.largeTitle, design: .rounded, weight: .semibold))
                    .foregroundStyle(.otdNavy)
                Text("Know the real number before you sign")
                    .font(.subheadline)
                    .foregroundStyle(.otdMuted)
            }
            Spacer()
        }
        .padding(.bottom, 4)
    }

    private var stickyTotal: some View {
        OTDTotalCard(
            total: viewModel.outTheDoorTotal,
            savings: viewModel.totalDeductions
        )
        .padding(.horizontal, 20)
        .padding(.bottom, 12)
        .background(
            LinearGradient(
                colors: [.otdBackground.opacity(0), .otdBackground],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            .allowsHitTesting(false)
        )
    }
}

/// Reusable surface card that wraps a section in white with soft elevation.
struct SectionCard<Content: View>: View {
    @ViewBuilder var content: Content

    var body: some View {
        content
            .padding(20)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.otdSurface, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
            .shadow(color: .otdNavy.opacity(0.05), radius: 10, y: 4)
    }
}

#Preview {
    ContentView()
}
