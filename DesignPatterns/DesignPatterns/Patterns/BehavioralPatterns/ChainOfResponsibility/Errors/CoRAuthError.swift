import Foundation

enum CoRAuthError: LocalizedError, Identifiable {
    var id: CoRAuthError { self }

    case emptyFirstName
    case emptyLastName

    case emptyEmail
    case emptyPassword

    case invalidEmail
    case invalidPassword
    case differentPasswords

    case locationDisabled
    case notificationsDisabled
    
    case genericError

    var errorDescription: String {
        switch self {
        case .emptyFirstName:
            return "First name is empty"
        case .emptyLastName:
            return "Last name is empty"
        case .emptyEmail:
            return "Email is empty"
        case .emptyPassword:
            return "Password is empty"
        case .invalidEmail:
            return "Email is invalid"
        case .invalidPassword:
            return "Password is invalid"
        case .differentPasswords:
            return "Password and repeated password should be equal"
        case .locationDisabled:
            return "Please turn location services on"
        case .notificationsDisabled:
            return "Please turn notifications on"
        case .genericError:
            return "Oops.. something went wrong"
        }
    }
}
