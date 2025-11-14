import Foundation

struct LoginHandler: Handler {
    var next: (any Handler)?
    
    init(with handler: (any Handler)? = nil) {
        self.next = handler
    }
    
    func handle(_ request: Request) -> CoRAuthError? {
        guard request.email?.isEmpty == false else {
            return CoRAuthError.emptyEmail
        }
        
        guard request.email?.contains(.emailIdentifier) == true else {
            return CoRAuthError.invalidEmail
        }

        guard request.password?.isEmpty == false else {
            return CoRAuthError.emptyPassword
        }
        
        guard (request.password?.count ?? 0) >= .passwordLength else {
            return CoRAuthError.invalidPassword
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
