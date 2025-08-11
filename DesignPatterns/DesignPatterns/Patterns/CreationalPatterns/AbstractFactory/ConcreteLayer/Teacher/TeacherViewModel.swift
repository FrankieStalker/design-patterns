import SwiftUI

struct TeacherViewModel: AuthViewModel {
    private let authViewFactory: any AuthViewFactory
    
    init(authViewFactory: any AuthViewFactory = TeacherAuthViewFactory()) {
        self.authViewFactory = authViewFactory
    }
    
    func presentLogin() -> any View {
        authViewFactory.authView(for: .login)
    }
    
    func presentSignUp() -> any View {
        authViewFactory.authView(for: .signUp)
    }
}
