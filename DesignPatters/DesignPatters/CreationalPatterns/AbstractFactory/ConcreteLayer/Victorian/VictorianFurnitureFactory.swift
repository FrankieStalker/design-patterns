struct VictorianFurnitureFactory: FurnitureFactory {
    func createChair() -> any Chair {
        VictorianChair()
    }
    
    func createCoffeeTable() -> any CoffeeTable {
        VictorianCoffeeTable()
    }
    
    func createSofa() -> any Sofa {
        VictorianSofa()
    }
    
    func createFurnitureSet() -> any Furniture {
        VictorianFurniture()
    }
}
