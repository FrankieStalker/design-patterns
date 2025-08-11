import SwiftUI

public protocol AuthViewModel {
    func presentLogin() -> any View
    func presentSignUp() -> any View
}
