

import Foundation

class Warehouse: Property{
    var ownerCompany: String
    var arrayProd = [Products]()
    init(ownerCompany: String, square: Double, cost: Int, address: String) {
        self.ownerCompany = ownerCompany
        super.init(square: square, cost: cost, address: address)
    }

    func addProd(prod: Products){
        arrayProd.append(prod)
    }
    
    override func changeCost() {
        var newCost = 0
        let randomCost = Int.random(in: 1500...5000)
        newCost = cost + randomCost
        print("\nСклад. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address). \nВладелец(компания) - \(ownerCompany). \nСтарая стоимость - \(cost) \nНовая стоимость - \(newCost)")
    }
    
    override func showAllinfo() {
        print("\nСклад. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address). \nВладелец(компания) - \(ownerCompany)")
    }
}
