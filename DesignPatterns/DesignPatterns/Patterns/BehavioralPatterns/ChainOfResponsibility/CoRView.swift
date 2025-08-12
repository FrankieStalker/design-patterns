import SwiftUI

struct CoRViewModel {
    private let loginHandler: LoginHandler
    private let signUpHandler: SignUpHandler
    
    init(
        loginHandler: LoginHandler = LoginHandler(with: LocationHandler()),
        signUpHandler: SignUpHandler = SignUpHandler(with: NotificationHandler())
    ) {
        self.loginHandler = loginHandler
        self.signUpHandler = signUpHandler
    }
    
    func login() {
        
    }
    
    func signUp() {
        
    }
}

struct CoRView: View {
    
    
    var body: some View {
        tabView
            .navigationTitle(title)
            .navigationBarTitleDisplayMode(.inline)
    }
    
    private var title: Text {
        Text("Chain of Responsibility Pattern")
    }
    
    private var tabView: some View {
        TabView {
            Tab("Login View", systemImage: "person.crop.circle") {
                CoRLoginView()
            }
            Tab("Sign Up View", systemImage: "person.crop.circle.badge.plus") {
                CoRSignUpView()
            }
        }
        .padding(.horizontal)
    }
}
