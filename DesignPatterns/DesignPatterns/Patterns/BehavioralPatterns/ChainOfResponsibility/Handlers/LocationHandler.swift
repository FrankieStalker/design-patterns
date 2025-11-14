import Foundation
import SwiftUI

struct LocationHandler: Handler {
    var next: (any Handler)?
    
    var isLocationEnabled: Bool {
        UserDefaults.standard.bool(forKey: "isLocationEnabled")
    }
    
    init(with handler: (any Handler)? = nil) {
        self.next = handler
    }
    
    func handle(_ request: Request) -> CoRAuthError? {
        guard isLocationEnabled else {
            return CoRAuthError.locationDisabled
        }
        return next?.handle(request)
    }
}
