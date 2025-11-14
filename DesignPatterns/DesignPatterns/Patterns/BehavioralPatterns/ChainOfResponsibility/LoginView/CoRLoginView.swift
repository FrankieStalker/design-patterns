import SwiftUI

struct CoRLoginView: View {
    @AppStorage("isLocationEnabled") private var isLocationEnabled = false
    
    @State private var state = CoRLoginViewState()
    
    private var viewModel: CoRLoginViewModel {
        CoRLoginViewModel(state: state)
    }
    
    var body: some View {
        content
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .top)
            .sheet(
                item: $state.error,
                content: { error in
                    Text(error.errorDescription)
                        .presentationDetents([.height(200)])
                }
            )
    }
    
    @ViewBuilder
    private var content: some View {
        VStack {
            toggle
            if state.isLoggedIn {
                loggedInView
            } else {
                loggedOutView
            }
        }
    }
    
    private var loggedInView: some View {
        VStack {
            Text("Logged in view")
            BasicButton(buttonText: "Logout") {
                self.state.isLoggedIn = false
            }
        }
        .frame(maxHeight: .infinity)
    }
    
    private var loggedOutView: some View {
        VStack {
            formFields
            loginButton
        }
        .frame(maxHeight: .infinity)
    }
    
    private var toggle: some View {
        Toggle(isOn: $isLocationEnabled) {
            Text("Enable location")
        }
    }
    
    private var formFields: some View {
        VStack {
            emailField
            passwordField
        }
        .padding(.vertical)
    }
    
    private var emailField: some View {
        OptionalTextField(title: "email:", text: $state.email)
    }
    
    private var passwordField: some View {
        HStack {
            OptionalTextField(
                title: "password:",
                text: $state.password,
                isSecure: $state.passwordHidden
            )
            
            Button {
                state.passwordHidden.toggle()
            } label: {
                Image(systemName: self.state.passwordHidden ? "eye" : "eye.slash")
                    .foregroundColor(.gray)
            }
        }
    }
    
    private var loginButton: some View {
        BasicButton(buttonText: "Login") {
            viewModel.login()
        }
    }
}
