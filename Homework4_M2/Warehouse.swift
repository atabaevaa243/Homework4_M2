

import Foundation

class Warehouse: Property{
    var ownerCompany: String
    var arrayProd = [Products]()
    var emptyArray = [Products]()
    init(ownerCompany: String, square: Double, cost: Int, address: String) {
        self.ownerCompany = ownerCompany
        super.init(square: square, cost: cost, address: address)
    }

    func addProd(prod: Products){
        arrayProd.append(prod)
    }

    func removeDublicates(){
        emptyArray.append(Products())

        for (index,item) in arrayProd.enumerated(){
            var found = false
            var indexTo = 0
            for (index2, item2) in emptyArray.enumerated(){
                if item.nameProd == item2.nameProd{
                    found = true
                    indexTo = index2
                }
            }
            if found == false{
                emptyArray.append(item)
            }else{
                found = false
                emptyArray[indexTo].amount += item.amount
            }
        }

        emptyArray.remove(at: 0)
    }
//    func showProd(){
//        for j in emptyArray{
//            for i in arrayProd{
//                if j == i.nameProd{
//                    i.amount += 1
//                }else{
//                    emptyArray.append(i.nameProd)
//                }
//            }
//        }
//    }
        
//        for product in arrayProd{
//            for i in emptyArray {
//                if i == product.nameProd {
//                    product.amount += product.amount
//                } else {
//                    emptyArray.append(i)
//                }
//            }
//            print("Товары - \(emptyArray)")
//        }
//    }
        
//        var amount = 0
//        for i in emptyArray{
//            if i == i {
//                amount += 1
//            } else{
//                emptyArray.append(i)
//            }
//        }
//        dump(emptyArray)
    
    override func changeCost(cost: Int) {
        print("\nСклад.\nСтарая стоимость - \(self.cost) \nНовая стоимость - \(cost). \nВладелец(компания) - \(ownerCompany)")
        self.cost = cost
    }
    
    override func showAllinfo() {
        removeDublicates()
        var string = ""
        string += ("\nСклад. \nПлощадь - \(square). \nСтоимость - \(cost). \nАдрес - \(address). \nВладелец(компания) - \(ownerCompany). \nТовары - ")
        for (index,item) in emptyArray.enumerated(){
            string += "\(index + 1).Название:\(item.nameProd) - Штрихкод - \(item.barcode) - Количество:\(item.amount)\n "
        }
        print(string)
    }
}
