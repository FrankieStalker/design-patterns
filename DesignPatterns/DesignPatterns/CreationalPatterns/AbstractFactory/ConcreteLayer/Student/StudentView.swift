import SwiftUI

struct StudentView: AuthViewProtocol {
    @Binding var state: AuthViewState
    
    let viewModel: any AuthViewModel = StudentViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            studentViewTitle
            studentViewButtons
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    private var studentViewTitle: some View {
        Text("Student View")
            .font(.title)
    }
    
    private var studentViewButtons: some View {
        HStack(spacing: 0) {
            BasicButton(buttonText: "Login") {
                state.view = viewModel.presentLogin()
                state.isPresentingAuthView = true
            }
            BasicButton(buttonText: "Sign Up") {
                state.view = viewModel.presentSignUp()
                state.isPresentingAuthView = true
            }
        }
    }
}
