struct AbstractFactoryExampleViewModel {
    
    private let client = Client()
    
    public func createChair(with furnitureType: FurnitureType) -> any Chair {
        let factory = switchForFurnitureFactory(with: furnitureType)
        return client.createChair(with: factory)
    }
    
    public func createCoffeeTable(with furnitureType: FurnitureType) -> any CoffeeTable {
        let factory = switchForFurnitureFactory(with: furnitureType)
        return client.createCoffeeTable(with: factory)
    }
    
    public func createSofa(with furnitureType: FurnitureType) -> any Sofa {
        let factory = switchForFurnitureFactory(with: furnitureType)
        return client.createSofa(with: factory)
    }
    
    public func createFurnitureSet(with furnitureType: FurnitureType) -> any Furniture {
        let factory = switchForFurnitureFactory(with: furnitureType)
        return client.createFurnitureSet(with: factory)
    }
    
    private func switchForFurnitureFactory(with furnitureType: FurnitureType) -> any FurnitureFactory {
        switch furnitureType {
        case .artDeco:
            return ArtDecoFurnitureFactory()
        case .modern:
            return ModernFurnitureFactory()
        case .victorian:
            return VictorianFurnitureFactory()
        }
    }
}

enum FurnitureType {
    case artDeco
    case modern
    case victorian
}
