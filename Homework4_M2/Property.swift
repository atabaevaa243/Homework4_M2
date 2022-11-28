
//при любых
//например изначально задали цену 10000
//вызываете метод changeCost(cost: 15000) и всё

import Foundation

class Property{
    var square: Double
    var cost: Int
    var address: String
    init(square: Double, cost: Int, address: String) {
        self.square = square
        self.cost = cost
        self.address = address
    }
    
    func changeCost(){
        var newCost = 0
        let randomCost = Int.random(in: 1500...5000)
        newCost = cost + randomCost
        print("\nНедвижимость. \nПлощадь - \(square). \nСтарая стоимость - \(cost) \nНовая стоимость - \(newCost). \nАдрес - \(address)")
    }
    
    func showAllinfo(){
        print("\nНедвижимость. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address)")
    }
}
