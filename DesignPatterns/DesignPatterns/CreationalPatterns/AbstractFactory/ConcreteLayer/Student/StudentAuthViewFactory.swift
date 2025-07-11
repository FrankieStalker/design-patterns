import SwiftUI

struct StudentAuthViewFactory: AuthViewFactory {
    func authView(for type: AuthType) -> any View {
        switch type {
        case .login: StudentLoginView()
        case .signUp: StudentSignupView()
        }
    }
}
