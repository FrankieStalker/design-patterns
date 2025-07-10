struct ArtDecoFurnitureFactory: FurnitureFactory {
    func createChair() -> any Chair {
        ArtDecoChair()
    }
    
    func createCoffeeTable() -> any CoffeeTable {
        ArtDecoCoffeeTable()
    }
    
    func createSofa() -> any Sofa {
        ArtDecoSofa()
    }
    
    func createFurnitureSet() -> any Furniture {
        ArtDecoFurniture()
    }
}
