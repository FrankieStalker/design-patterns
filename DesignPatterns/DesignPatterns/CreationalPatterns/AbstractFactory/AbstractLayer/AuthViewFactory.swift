import SwiftUI

public protocol AuthViewFactory {
    func authView(for type: AuthType) -> any View
}
