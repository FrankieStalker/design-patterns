import Foundation

protocol Handler {
    var next: (any Handler)? { get }
    
    init(with handler: (any Handler)?)
    func handle(_ request: Request) -> CoRAuthError?
}

extension Handler {
    func handle(_ request: any Request) -> CoRAuthError? {
        next?.handle(request)
    }
}
