import SwiftUI

@Observable
class CoRLoginViewState {
    var email: String?
    var password: String?
    var passwordHidden: Bool = true
    
    var isLoggedIn: Bool = false
    var error: CoRAuthError?
}
