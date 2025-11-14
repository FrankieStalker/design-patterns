import SwiftUI

struct DecoratorView: View {
    @State private var state = DecoratorViewState()
    
    private var viewModel: DecoratorViewModel {
        DecoratorViewModel(state: state)
    }
    
    var body: some View {
        decoratorView
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private var decoratorView: some View {
        VStack(alignment: .leading, spacing: 12) {
            output
            textField
            buttons
        }
        .padding(.horizontal)
    }
    
    private var title: Text {
        Text("Decorator Pattern")
    }
    
    private var output: some View {
        Text("Output: \(state.output)")
    }
    
    private var textField: some View {
        TextField("Enter Text", text: $state.text)
    }
    
    private var buttons: some View {
        ScrollView {
            VStack(spacing: 8) {
                BasicButton(buttonText: "Default") {
                    viewModel.formatText()
                }
                
                BasicButton(buttonText: "Trim") {
                    viewModel.formatText(with: TrimDecorator())
                }
                
                BasicButton(buttonText: "Uppercase") {
                    viewModel.formatText(with: UpperCaseDecorator())
                }
                
                BasicButton(buttonText: "Lowercase") {
                    viewModel.formatText(with: LowerCaseDecorator())
                }
                
                BasicButton(buttonText: "Trim & Lowercase") {
                    viewModel.formatText(with: LowerCaseDecorator(wrapped: TrimDecorator()))
                }
                
                BasicButton(buttonText: "Trim & Uppercase") {
                    viewModel.formatText(with: UpperCaseDecorator(wrapped: TrimDecorator()))
                }
            }
            .padding(.vertical)
        }
    }
}
