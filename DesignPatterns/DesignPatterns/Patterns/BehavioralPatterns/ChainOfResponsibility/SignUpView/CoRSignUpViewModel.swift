import Foundation

struct CoRSignUpViewModel {
    private var state: CoRSignUpViewState
    private let signUpHandler: SignUpHandler
    
    init(
        state: CoRSignUpViewState,
        signUpHandler: SignUpHandler = SignUpHandler(with: NotificationHandler())
    ) {
        self.state = state
        self.signUpHandler = signUpHandler
    }
    
    func signUp() {
        let request = SignUpRequest(
            firstName: state.firstName,
            lastName: state.lastNight,
            email: state.email,
            password: state.password,
            repeatedPassword: state.repeatedPassword
        )
        
        let result = signUpHandler.handle(request)
        
        state.error = result
        state.hasSignedUp = result == nil
        
        if state.hasSignedUp {
            state.firstName = nil
            state.lastNight = nil
            state.email = nil
            state.password = nil
            state.repeatedPassword = nil
        }
    }
}
