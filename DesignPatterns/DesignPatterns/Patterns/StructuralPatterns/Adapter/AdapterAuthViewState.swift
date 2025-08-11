import SwiftUI

@Observable
class AdapterAuthViewState {
    var isPresentingAuthView = false
    
    var view: (any View)?
}
