import SwiftUI

struct TeacherAuthViewFactory: AuthViewFactory {
    func authView(for type: AuthType) -> any View {
        switch type {
        case .login: TeacherLoginView()
        case .signUp: TeacherSignupView()
        }
    }
}
