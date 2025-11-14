import Foundation

struct NotificationHandler: Handler {
    var next: (any Handler)?
    
    var isNotificationsEnabled: Bool {
        UserDefaults.standard.bool(forKey: "isNotificationsEnabled")
    }
    
    init(with handler: (any Handler)? = nil) {
        self.next = handler
    }
    
    func handle(_ request: any Request) -> CoRAuthError? {
        guard isNotificationsEnabled else {
            return CoRAuthError.notificationsDisabled
        }
        return next?.handle(request)
    }
}
