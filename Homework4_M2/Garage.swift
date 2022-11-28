

import Foundation

class Garage: Property{
    var carInside: String
    var basement: Bool
    init(carInside: String, basement: Bool, square: Double, cost: Int, address: String) {
        self.carInside = carInside
        self.basement = basement
        super.init(square: square, cost: cost, address: address)
    }
    
    override func changeCost() {
        var newCost = 0
        let randomCost = Int.random(in: 1500...5000)
        newCost = cost + randomCost
        print("\nГараж. \nМашина внутри - \(carInside). \nПодвал - \(basement). \nПлощадь - \(square). \nСтарая стоимость - \(cost) \nНовая стоимость - \(newCost). \nАдрес - \(address)")
    }
    
    override func showAllinfo() {
        print("\nГараж. \nМашина внутри - \(carInside). \nПодвал - \(basement). \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address)")
    }
}
