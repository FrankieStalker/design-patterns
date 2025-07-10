public protocol FurnitureFactory {
    func createChair() -> any Chair
    func createCoffeeTable() -> any CoffeeTable
    func createSofa() -> any Sofa
    func createFurnitureSet() -> any Furniture
}
