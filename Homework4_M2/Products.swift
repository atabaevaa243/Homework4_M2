

import Foundation

class Products {
    var nameProd: String
    var barcode: String
    var amount: Int
    init(){
        self.nameProd = ""
        self.barcode = ""
        self.amount = 0
    }
    init(nameProd: String, barcode: String, amount: Int) {
        self.nameProd = nameProd
        self.barcode = barcode
        self.amount = amount
    }
}
