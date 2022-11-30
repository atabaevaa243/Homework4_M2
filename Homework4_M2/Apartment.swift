

import Foundation

class Apartment: Property{
    var numOfTenants: Int
    var arrayOfconveniences: [String]
    //var arrayOfconveniences = [String]()
    //... : [String]= []
    init(numOfTenants: Int, arrayOfconveniences: [String], square: Double, cost: Int, address: String) {
        self.numOfTenants = numOfTenants
        self.arrayOfconveniences = arrayOfconveniences
        super.init(square: square, cost: cost, address: address)
    }
    
    override func changeCost(cost: Int) {
        print("\nКвартира.\nСтарая стоимость - \(self.cost) \nНовая стоимость - \(cost).\nКол-во жильцов - \(numOfTenants) ")
        self.cost = cost
    }
    
    override func showAllinfo() {
        var string = ""
        string += "\nКвартира. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address). \nКол-во жильцов - \(numOfTenants). \nУдобства - "
        for i in arrayOfconveniences{
            string += "\(i), "
        }
        print(string)
    }
}
