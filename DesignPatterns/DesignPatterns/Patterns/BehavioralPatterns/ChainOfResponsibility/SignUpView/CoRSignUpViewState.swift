import SwiftUI

@Observable
class CoRSignUpViewState {
    var firstName: String?
    var lastNight: String?
    var email: String?
    var password: String?
    var repeatedPassword: String?
    
    var passwordHidden = true
    var hasSignedUp = false
    var error: CoRAuthError?
}
