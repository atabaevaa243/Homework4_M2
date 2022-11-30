
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
    
    func changeCost(cost: Int){
        print("\nНедвижимость.\nСтарая стоимость - \(self.cost) \nНовая стоимость - \(cost).")
        self.cost = cost
    }
    
    func showAllinfo(){
        print("\nНедвижимость. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address)")
    }
}
