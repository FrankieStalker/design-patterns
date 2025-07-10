public struct Client {
    public func createFurnitureSet(
        with furnitureFactory: any FurnitureFactory
    ) -> any Furniture {
        furnitureFactory.createFurnitureSet()
    }
    
    public func createChair(
        with furnitureFactory: any FurnitureFactory
    ) -> any Chair {
        furnitureFactory.createChair()
    }
    
    public func createCoffeeTable(
        with furnitureFactory: any FurnitureFactory
    ) -> any CoffeeTable {
        furnitureFactory.createCoffeeTable()
    }
    
    public func createSofa(
        with furnitureFactory: any FurnitureFactory
    ) -> any Sofa {
        furnitureFactory.createSofa()
    }
}
