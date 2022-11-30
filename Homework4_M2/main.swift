
//#1. Создать класс Недвижимость
//Параметры: Площадь, цена, адрес
//Методы: Изменение цены, отображение информации
//Наследовать от него классы: Квартира, Склад, Гараж
//
//В классе Квартира добавить параметр: количество жильцов, массив с удобствами(например: сан.узел, интернет и тд) !!!
//Переопределить метод из базового класса и отобразить все данные об объекте в одной строке
//В классе склад доп.параметры - какой компании пренадлежит и массив с имеющимися товарами на складе
//Добавить метод, отображающий товары на складе !!!
//
//В классе Гараж добавить параметры - какая машина находится внутри и есть ли подвал внутри гаража
//Доступ к свойствам ограничить модификаторами доступа
//
//В main создать массив недвижимости и отобразить какого типа недвижимости сколько имеется и по каждому из типов выдать полную информацию


import Foundation

var array = [Property]()
var warehouse = Warehouse(ownerCompany: "Apple", square: 20000.0, cost: 10000000, address: "Apple Park")

array.append(Property(square: 95.5, cost: 120000, address: "Moskovskaya 137"))
array.append(Property(square: 150.0, cost: 190000, address: "Abdrahmanova 76"))
array.append(Property(square: 260.0, cost: 235000, address: "Ibraimova 37"))


array.append(Apartment(numOfTenants: 5, arrayOfconveniences: ["kond","wi-fi"], square: 150.5, cost: 178000, address: "Zagorskaya 44"))
array.append(Apartment(numOfTenants: 3, arrayOfconveniences: ["tv","netflix"], square: 105.0, cost: 114000, address: "Tokombaeva 43"))
array.append(Apartment(numOfTenants: 2, arrayOfconveniences: ["trenajernyi zal"], square: 76.0, cost: 96000, address: "Tashkumyrskaya 110"))


array.append(Garage(carInside: "Toyota Camry 50", basement: true, square: 13.0, cost: 30000, address: "10 mkr"))
array.append(Garage(carInside: "Mitsubishi Pajero", basement: true, square: 10.0, cost: 15000, address: "Naberejnaya 5"))
array.append(Garage(carInside: "Mercedes e320", basement: false, square: 15.0, cost: 27000, address: "Jibek-Jolu 110"))
array.append(Garage(carInside: "BMW x6", basement: true, square: 18.0, cost: 34000, address: "Valihanova 56"))

//arrayProd.append(Products(nameProd: "средство для мытья посуды"))
//arrayProd.append(Products(nameProd: "салфетки"))
//arrayProd.append(Products(nameProd: "порошок"))
//arrayProd.append(Products(nameProd: "мыло"))
//arrayProd.append(Products(nameProd: "бумага"))

//dump(arrayProd)

//var warehouse = Warehouse(ownerCompany: "Мегасити", arrayProd: prod1, square: 50.3, cost: 65000, address: "Panfilova 87")
//
//var prod1 = Products(nameProd: "средство для мытья посуды")
//var prod2 = Products(nameProd: "салфетки")
//var prod3 = Products(nameProd: "порошок")
//var prod4 = Products(nameProd: "мыло")
//var prod5 = Products(nameProd: "бумага")
//
//
//warehouse.addProd(prod: prod1)
//warehouse.addProd(prod: prod2)
//warehouse.addProd(prod: prod3)
//warehouse.addProd(prod: prod4)
//warehouse.addProd(prod: prod5)
//
//array.append(warehouse)
var emptyArray = [Products]()
//array.append(Warehouse(ownerCompany: "Мегасити", square: 50.3, cost: 65000, address: "Panfilova 87"))
warehouse.addProd(prod: Products(nameProd: "kola", barcode: "124365", amount: 10))
warehouse.addProd(prod: Products(nameProd: "hleb", barcode: "436789", amount: 8))
warehouse.addProd(prod: Products(nameProd: "moloko", barcode: "764523", amount: 4))
warehouse.addProd(prod: Products(nameProd: "moloko", barcode: "764523", amount: 4))

//    if i.nameProd == i.nameProd {
//        i.amount += 1
//    } else if i.nameProd != i.nameProd{
//        emptyArray.append(i.nameProd)
//    }
//    for j in emptyArray{
//        emptyArray.append(i.nameProd)
//        if j == i.nameProd{
//            i.amount += 1
//        } else {
//            emptyArray.append(i.nameProd)
//        }
//    }
//}


var countProperty = 0
var countApartment = 0
var countGarage = 0
var countWarehouse = 0

for property in array{
    if property is Apartment {
        countApartment += 1
//        property.changeCost(cost: 12000)
        property.showAllinfo()
    } else if property is Garage {
        countGarage += 1
//        property.changeCost(cost: 13000)
        property.showAllinfo()
    } else if property is Warehouse{
        countWarehouse += 1
//        property.changeCost(cost: 14000)
        property.showAllinfo()
    } else {
        countProperty += 1
//        property.changeCost(cost: 15000)
        property.showAllinfo()
    }
}

print("\nКол-во недвижимости - \(countProperty) \nКол-во квартир - \(countApartment) \nКол-во гаражей - \(countGarage) \nКол-во складов - \(countWarehouse)")


//func showProd(){
//    for i in arrayProd{
//        for j in emptyArray{
//            if i.nameProd == i.nameProd{
//                i.amount += 1
//            } else {
//                emptyArray.append(i.nameProd)
//            }
//        }
//    }
//}


//var count  = 0
//var perem2 = ""
//for i in arrayProd{
//    var perem2 = ""
//    emptArray.append(i.nameProd)
//    for i in emptArray{
//        perem2 = i
//        if perem2 == i {
//            count += 1
//        } else {
//            print(perem2)
//        }
//    }
//}

//
//for i in arrayProd{
//    if i.nameProd == i.nameProd {
//        i.amount += 1
//    } else {
//        emptArray.append(i.nameProd)
//    }
//}



//dump(emptArray)
//dump(arrayProd)

warehouse.showAllinfo()
