struct ModernFurnitureFactory: FurnitureFactory {
    func createChair() -> any Chair {
        ModernChair()
    }
    
    func createCoffeeTable() -> any CoffeeTable {
        ModernCoffeeTable()
    }
    
    func createSofa() -> any Sofa {
        ModernSofa()
    }
    
    func createFurnitureSet() -> any Furniture {
        ModernFurniture()
    }
}
