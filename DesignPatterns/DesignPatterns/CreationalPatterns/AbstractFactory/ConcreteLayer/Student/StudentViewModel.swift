import SwiftUI

struct StudentViewModel: AuthViewModel {
    private let authViewFactory: any AuthViewFactory
    
    init(authViewFactory: any AuthViewFactory = StudentAuthViewFactory()) {
        self.authViewFactory = authViewFactory
    }
    
    func presentLogin() -> any View {
        authViewFactory.authView(for: .login)
    }
    
    func presentSignUp() -> any View {
        authViewFactory.authView(for: .signUp)
    }
}
