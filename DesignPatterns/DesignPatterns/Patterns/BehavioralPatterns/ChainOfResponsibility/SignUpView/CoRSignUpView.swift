import SwiftUI

struct CoRSignUpView: View {
    @AppStorage("isNotificationsEnabled") private var isNotificationsEnabled = false
    
    @State private var state = CoRSignUpViewState()
    
    var viewModel: CoRSignUpViewModel {
        CoRSignUpViewModel(state: state)
    }
    
    var body: some View {
        content
            .padding(.horizontal)
            .frame(maxHeight: .infinity, alignment: .top)
            .sheet(
                item: $state.error,
                onDismiss: { state.error = nil },
                content: { error in
                    Text(error.errorDescription)
                        .presentationDetents([.height(200)])
                }
            )
            .sheet(
                isPresented: $state.hasSignedUp,
                onDismiss: { state.hasSignedUp = false },
                content: {
                    Text("Successful signed up")
                        .presentationDetents([.height(200)])
                }
            )
    }
    
    var content: some View {
        VStack {
            toggle
            signUpForm
        }
    }
    
    private var toggle: some View {
        Toggle(isOn: $isNotificationsEnabled) {
            Text("Enable notificaitons")
        }
    }
    
    private var signUpForm: some View {
        VStack {
            textFields
            signUpButton
        }
        .frame(maxHeight: .infinity)
    }
    
    var textFields: some View {
        VStack {
            OptionalTextField(title: "first name:", text: $state.firstName)
            OptionalTextField(title: "last name:", text: $state.lastNight)
            OptionalTextField(title: "email:", text: $state.email)
            secureField(title: "password:", text: $state.password)
            OptionalTextField(
                title: "repeat password:",
                text: $state.repeatedPassword,
                isSecure: $state.passwordHidden
            )
        }
        .padding(.vertical)
    }
    
    private var signUpButton: some View {
        BasicButton(buttonText: "SignUp") {
            viewModel.signUp()
        }
    }
    
    private func secureField(title: String, text: Binding<String?>) -> some View {
        HStack {
            OptionalTextField(
                title: title,
                text: text,
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
}
