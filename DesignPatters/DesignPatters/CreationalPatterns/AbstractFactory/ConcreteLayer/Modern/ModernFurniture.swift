struct ModernFurniture: Furniture {
    var chair: any Chair { ModernChair() }
    var coffeeTable: any CoffeeTable { ModernCoffeeTable() }
    var sofa: any Sofa { ModernSofa() }
}
