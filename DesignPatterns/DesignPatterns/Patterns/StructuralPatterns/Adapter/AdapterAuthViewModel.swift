import SwiftUI

struct AdapterAuthViewModel {
    private var state: AdapterAuthViewState
    
    private let facebookAuthService: any AdapterAuthService
    private let xAuthService: any AdapterAuthService
    
    init(
        state: AdapterAuthViewState,
        facebookAuthService: any AdapterAuthService = FacebookAuthSDK(),
        xAuthService: any AdapterAuthService = XAuthSDK()
    ) {
        self.state = state
        self.facebookAuthService = facebookAuthService
        self.xAuthService = xAuthService
    }
    
    func presentAuthView(with authType: AdapterAuthType) {
        switch authType {
        case .facebook:
            state.view = facebookAuthService.presentAuthFlow()
        case .x:
            state.view = xAuthService.presentAuthFlow()
        }
        state.isPresentingAuthView = true
    }
    
    func dismissAuthFlow() {
        state.view = nil
        state.isPresentingAuthView = false
    }
}
