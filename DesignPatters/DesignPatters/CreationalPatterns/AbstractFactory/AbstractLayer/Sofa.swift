public protocol Sofa {
    var hasLegs: Bool { get }
    var numberOfSeats: Int { get }
    
    func layDown() -> String
}
