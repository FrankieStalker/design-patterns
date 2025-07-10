import Testing

@testable import DesignPatters

@Suite("Client tests")
struct ClientTests {

    @Test(
        arguments: [
            ChairTestCase(factory: ArtDecoFurnitureFactory(), chair: ArtDecoChair()),
            ChairTestCase(factory: ModernFurnitureFactory(), chair: ModernChair()),
            ChairTestCase(factory: VictorianFurnitureFactory(), chair: VictorianChair()),
        ]
    )
    func test_givenFactory_returnCorrectChair(
        _ testCase: ChairTestCase
    ) {
        let sut = Client()
        
        let chair = sut.createChair(with: testCase.factory)
        
        #expect(chair.hasLegs == testCase.chair.hasLegs)
        #expect(chair.sitOn() == testCase.chair.sitOn())
    }

    @Test(
        arguments: [
            CoffeeTableTestCase(factory: ArtDecoFurnitureFactory(), coffeeTable: ArtDecoCoffeeTable()),
            CoffeeTableTestCase(factory: ModernFurnitureFactory(), coffeeTable: ModernCoffeeTable()),
            CoffeeTableTestCase(factory: VictorianFurnitureFactory(), coffeeTable: VictorianCoffeeTable()),
        ]
    )
    func test_givenFactory_returnCorrectCoffeeTable(
        _ testCase: CoffeeTableTestCase
    ) {
        let sut = Client()
        
        let coffeeTable = sut.createCoffeeTable(with: testCase.factory)
        
        #expect(coffeeTable.hasDraw == testCase.coffeeTable.hasDraw)
        #expect(coffeeTable.placeItem() == testCase.coffeeTable.placeItem())
    }
    
    @Test(
        arguments: [
            SofaTableTestCase(factory: ArtDecoFurnitureFactory(), sofa: ArtDecoSofa()),
            SofaTableTestCase(factory: ModernFurnitureFactory(), sofa: ModernSofa()),
            SofaTableTestCase(factory: VictorianFurnitureFactory(), sofa: VictorianSofa()),
        ]
    )
    func test_givenFactory_returnCorrectSofa(
        _ testCase: SofaTableTestCase
    ) {
        let sut = Client()
        
        let sofa = sut.createSofa(with: testCase.factory)
        
        #expect(sofa.hasLegs == testCase.sofa.hasLegs)
        #expect(sofa.numberOfSeats == testCase.sofa.numberOfSeats)
        #expect(sofa.layDown() == testCase.sofa.layDown())
    }
    
    @Test(
        arguments: [
            FurnitureSetTestCase(factory: ArtDecoFurnitureFactory(), furnitureSet: ArtDecoFurniture()),
            FurnitureSetTestCase(factory: ModernFurnitureFactory(), furnitureSet: ModernFurniture()),
            FurnitureSetTestCase(factory: VictorianFurnitureFactory(), furnitureSet: VictorianFurniture()),
        ]
    )
    func test_givenFactory_returnCorrectFurnitureSet(
        _ testCase: FurnitureSetTestCase
    ) {
        let sut = Client()
        
        let furnitureSet = sut.createFurnitureSet(with: testCase.factory)
        
        #expect(furnitureSet.sofa.hasLegs == testCase.furnitureSet.sofa.hasLegs)
        #expect(furnitureSet.sofa.numberOfSeats == testCase.furnitureSet.sofa.numberOfSeats)
        #expect(furnitureSet.sofa.layDown() == testCase.furnitureSet.sofa.layDown())
        #expect(furnitureSet.coffeeTable.hasDraw == testCase.furnitureSet.coffeeTable.hasDraw)
        #expect(furnitureSet.coffeeTable.placeItem() == testCase.furnitureSet.coffeeTable.placeItem())
        #expect(furnitureSet.chair.hasLegs == testCase.furnitureSet.chair.hasLegs)
        #expect(furnitureSet.chair.sitOn() == testCase.furnitureSet.chair.sitOn())
    }
}

struct ChairTestCase {
    let factory: any FurnitureFactory
    let chair: any Chair
}

struct CoffeeTableTestCase {
    let factory: any FurnitureFactory
    let coffeeTable: any CoffeeTable
}

struct SofaTableTestCase {
    let factory: any FurnitureFactory
    let sofa: any Sofa
}

struct FurnitureSetTestCase {
    let factory: any FurnitureFactory
    let furnitureSet: any Furniture
}
