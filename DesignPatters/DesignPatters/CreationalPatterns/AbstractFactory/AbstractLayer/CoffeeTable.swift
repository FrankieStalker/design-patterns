public protocol CoffeeTable {
    var hasDraw: Bool { get }
    
    func placeItem() -> String
}
