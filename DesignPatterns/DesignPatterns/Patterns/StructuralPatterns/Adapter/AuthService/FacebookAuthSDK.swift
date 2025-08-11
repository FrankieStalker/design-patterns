import SwiftUI

struct FacebookAuthSDK {
    func presentAuthFlow() -> any View {
        FacebookAuthView()
    }
}

extension FacebookAuthSDK: AdapterAuthService {}
