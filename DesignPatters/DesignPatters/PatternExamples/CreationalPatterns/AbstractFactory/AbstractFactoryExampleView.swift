import SwiftUI

@Observable
class AbstractFactoryExampleViewState {
    var chair: (any Chair)?
    var sofa: (any Sofa)?
    var coffeeTable: (any CoffeeTable)?
    var furniture: (any Furniture)?
}

public struct AbstractFactoryExampleView: View {
    
    let viewModel = AbstractFactoryExampleViewModel()
    
    public var body: some View {
        VStack {
            title
            button(buttonTitle: "Create Art Deco Chair") {
                viewModel.createChair(with: .artDeco)
            }
        }
    }
    
    private var title: some View {
        Text("Abstract Factory Example")
            .font(.largeTitle)
    }
    
    private func button(buttonTitle: String, _ action: @escaping () -> Void) -> some View {
        Button {
            action()
        } label: {
            Text(buttonTitle)
        }
    }
}
