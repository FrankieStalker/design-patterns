struct CoRLoginViewModel {
    private var state: CoRLoginViewState
    private let loginHandler: LoginHandler
    
    init(
        state: CoRLoginViewState,
        loginHandler: LoginHandler = LoginHandler(with: LocationHandler())
    ) {
        self.state = state
        self.loginHandler = loginHandler
    }
    
    func login() {
        let request = LoginRequest(
            email: state.email,
            password: state.password
        )
        
        let result = loginHandler.handle(request)
        
        state.error = result
        state.isLoggedIn = result == nil
        if state.isLoggedIn {
            state.email = nil
            state.password = nil
        }
    }
}
