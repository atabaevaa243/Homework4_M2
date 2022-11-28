

import Foundation

class Apartment: Property{
    var numOfTenants: Int
    var arrayOfconveniences: String
    init(numOfTenants: Int, arrayOfconveniences: String, square: Double, cost: Int, address: String) {
        self.numOfTenants = numOfTenants
        self.arrayOfconveniences = arrayOfconveniences
        super.init(square: square, cost: cost, address: address)
    }
    
    override func changeCost() {
        var newCost = 0
        let randomCost = Int.random(in: 1500...5000)
        newCost = cost + randomCost
        print("\nКвартира. \nПлощадь - \(square). \nСтарая стоимость - \(cost) \nНовая стоимость - \(newCost). \nАдрес - \(address). \nКол-во жильцов - \(numOfTenants). \nУдобства - \(arrayOfconveniences)")
    }
    
    override func showAllinfo() {
        print("\nКвартира. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address). \nКол-во жильцов - \(numOfTenants). \nУдобства - \(arrayOfconveniences)")
    }
}
