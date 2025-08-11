import SwiftUI

struct TeacherView: AuthViewProtocol {
    @Binding var state: AuthViewState
    
    let viewModel: any AuthViewModel = TeacherViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
            teacherViewTitle
            teacherViewButtons
        }
        .frame(maxHeight: .infinity, alignment: .top)
    }
    
    private var teacherViewTitle: some View {
        Text("Teacher View")
            .font(.title)
    }
    
    private var teacherViewButtons: some View {
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
