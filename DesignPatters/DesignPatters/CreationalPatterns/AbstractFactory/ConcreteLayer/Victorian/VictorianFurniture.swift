struct VictorianFurniture: Furniture {
    var chair: any Chair { VictorianChair() }
    var coffeeTable: any CoffeeTable { VictorianCoffeeTable() }
    var sofa: any Sofa { VictorianSofa() }
}
