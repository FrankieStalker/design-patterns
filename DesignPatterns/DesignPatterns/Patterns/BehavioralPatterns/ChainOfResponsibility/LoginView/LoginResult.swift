import Foundation

struct LoginResult: Identifiable {
    var id = UUID()
    
    let error: CoRAuthError?
    let isLoggedIn: Bool
}
