import SwiftUI

struct XAuthSDK {
    func startAuthorisationFlow() -> any View {
        XAuthView()
    }
}

extension XAuthSDK: AdapterAuthService {
    func presentAuthFlow() -> any View {
        self.startAuthorisationFlow()
    }
}
