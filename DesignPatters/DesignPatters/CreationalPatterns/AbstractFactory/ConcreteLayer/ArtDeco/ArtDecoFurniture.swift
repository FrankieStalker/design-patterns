struct ArtDecoFurniture: Furniture {
    var chair: any Chair { ArtDecoChair() }
    var coffeeTable: any CoffeeTable { ArtDecoCoffeeTable() }
    var sofa: any Sofa { ArtDecoSofa() }
}
