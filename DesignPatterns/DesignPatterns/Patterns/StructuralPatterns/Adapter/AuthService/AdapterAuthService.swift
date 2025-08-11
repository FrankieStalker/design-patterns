import SwiftUI

protocol AdapterAuthService {
    func presentAuthFlow() -> any View
}
