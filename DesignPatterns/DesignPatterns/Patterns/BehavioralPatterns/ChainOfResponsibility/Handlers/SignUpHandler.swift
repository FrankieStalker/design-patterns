import Foundation

struct SignUpHandler: Handler {
    var next: (any Handler)?
    
    init(with handler: (any Handler)? = nil) {
        self.next = handler
    }
    
    func handle(_ request: Request) -> CoRAuthError? {
        
        guard let isEmptyFirstName = request.firstName?.isEmpty, !isEmptyFirstName else {
            return CoRAuthError.emptyFirstName
        }
        
        guard let isEmptyLastName = request.lastName?.isEmpty, !isEmptyLastName else {
            return CoRAuthError.emptyLastName
        }
        
        guard request.email?.contains(.emailIdentifier) == true else {
            return CoRAuthError.invalidEmail
        }
        
        guard (request.password?.count ?? 0) >= .passwordLength else {
            return CoRAuthError.invalidPassword
        }
        
        guard request.password == request.repeatedPassword else {
            return CoRAuthError.differentPasswords
        }
        
        return next?.handle(request)
    }
}

private extension Int {
    static var passwordLength = 8
}

private extension String {
    static var emailIdentifier = "@"
}
