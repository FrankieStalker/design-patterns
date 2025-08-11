import SwiftUI

@Observable
class AuthViewState {
    var isPresentingAuthView = false
    
    var view: (any View)?
}
