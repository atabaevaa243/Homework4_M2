

import Foundation

class Garage: Property{
    var carInside: String
    var basement: Bool
    init(carInside: String, basement: Bool, square: Double, cost: Int, address: String) {
        self.carInside = carInside
        self.basement = basement
        super.init(square: square, cost: cost, address: address)
    }
    
    override func changeCost(cost: Int) {
        print("\nГараж.\nСтарая стоимость - \(self.cost) \nНовая стоимость - \(cost)\nМашина внутри - \(carInside). \nПодвал - \(basement).")
        self.cost = cost
    }
    
    override func showAllinfo() {
        print("\nГараж. \nМашина внутри - \(carInside). \nПодвал - \(basement). \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address)")
    }
}
