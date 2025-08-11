import SwiftUI

struct AdapterAuthView: View {
    @State private var state = AdapterAuthViewState()
    
    var viewModel: AdapterAuthViewModel {
        AdapterAuthViewModel(state: state)
    }
    
    var body: some View {
        authButtonView
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
            .frame(maxHeight: .infinity, alignment: .top)
            .sheet(
                isPresented: $state.isPresentingAuthView,
                onDismiss: viewModel.dismissAuthFlow,
                content: {
                    if let view = state.view {
                        AnyView(view)
                            .presentationDetents([.medium])
                    }
                }
            )
    }
    
    private var title: Text {
        Text("Adapter Pattern")
    }
    
    private var authButtonView: some View {
        VStack {
            makeBrandedAuthButton(
                buttonView: {
                    brandedButtonView(
                        imageName: "facebookLogo",
                        buttonText: "Continue with Facebook",
                        buttonColour: .facebookBlue
                    )
                },
                action: {
                    viewModel.presentAuthView(with: .facebook)
                }
            )
            
            makeBrandedAuthButton(
                buttonView: {
                    brandedButtonView(
                        imageName: "xLogo",
                        buttonText: "Continue with X",
                        buttonColour: .black
                    )
                },
                action: {
                    viewModel.presentAuthView(with: .x)
                }
            )
        }
    }
    
    private func makeBrandedAuthButton(
        buttonView: @escaping () -> some View,
        action: @escaping () -> Void
    ) -> some View {
        Button {
            action()
        } label: {
            buttonView()
        }
    }
    
    private func brandedButtonView(
        imageName: String,
        buttonText: String,
        buttonColour: Color
    ) -> some View {
        HStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(buttonColour)
        .cornerRadius(8)
        .padding(.horizontal)
    }
}

extension Color {
    static let facebookBlue = Color(red: 59/255, green: 89/255, blue: 152/255)
}
