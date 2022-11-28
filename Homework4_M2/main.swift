
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
var arrayProd = [Products]()

array.append(Property(square: 95.5, cost: 120000, address: "Moskovskaya 137"))
array.append(Property(square: 150.0, cost: 190000, address: "Abdrahmanova 76"))
array.append(Property(square: 260.0, cost: 235000, address: "Ibraimova 37"))


array.append(Apartment(numOfTenants: 5, arrayOfconveniences: "kond", square: 150.5, cost: 178000, address: "Zagorskaya 44"))
array.append(Apartment(numOfTenants: 3, arrayOfconveniences: "hz", square: 105.0, cost: 114000, address: "Tokombaeva 43"))
array.append(Apartment(numOfTenants: 2, arrayOfconveniences: "hz", square: 76.0, cost: 96000, address: "Tashkumyrskaya 110"))


array.append(Garage(carInside: "Toyota Camry 50", basement: true, square: 13.0, cost: 30000, address: "10 mkr"))
array.append(Garage(carInside: "Mitsubishi Pajero", basement: true, square: 10.0, cost: 15000, address: "Naberejnaya 5"))
array.append(Garage(carInside: "Mercedes e320", basement: false, square: 15.0, cost: 27000, address: "Jibek-Jolu 110"))
array.append(Garage(carInside: "BMW x6", basement: true, square: 18.0, cost: 34000, address: "Valihanova 56"))

arrayProd.append(Products(nameProd: "средство для мытья посуды"))
arrayProd.append(Products(nameProd: "салфетки"))
arrayProd.append(Products(nameProd: "порошок"))
arrayProd.append(Products(nameProd: "мыло"))
arrayProd.append(Products(nameProd: "бумага"))

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

array.append(Warehouse(ownerCompany: "Мегасити", square: 50.3, cost: 65000, address: "Panfilova 87"))


var countProperty = 0
var countApartment = 0
var countGarage = 0
var countWarehouse = 0

for property in array{
    if property is Apartment {
        countApartment += 1
        property.changeCost()
    } else if property is Garage {
        countGarage += 1
        property.changeCost()
    } else if property is Warehouse{
        countWarehouse += 1
        property.changeCost()
    } else {
        countProperty += 1
        property.changeCost()
    }
}

print("\nКол-во недвижимости - \(countProperty) \nКол-во квартир - \(countApartment) \nКол-во гаражей - \(countGarage) \nКол-во складов - \(countWarehouse)")
