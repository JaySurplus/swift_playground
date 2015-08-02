//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, Initialization."


struct Fahrenheit {
    var temperature: Double
    init() {
        temperature = 32.0
    }
}

var f = Fahrenheit()

print("The default temperature is \(f.temperature)° Fahrenheit.")

struct Celsius {
    var temperatureInCelsius: Double
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
print(boilingPointOfWater.temperatureInCelsius)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print(freezingPointOfWater.temperatureInCelsius)


struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue:Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    
    init(white: Double) {
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0 , green:0.0 , blue: 1.0)
let halfGrey = Color(white:0.5)


class SurveyQuestion {
    var text : String
    var response: String?
    init(_ text: String){
        self.text = text
    }
    
    func ask() {
        print(text)
    }
    
}


let cheeseQuestion = SurveyQuestion("Do you like cheese?")
cheeseQuestion.ask()

cheeseQuestion.response = "Yes, I do like cheese."


/*
class ShoppingListItem {
    var name: String?
    var quantity = 1
    var purchased = false
}
var item = ShoppingListItem()


item.name
item.quantity.description
item.purchased.description

*/

struct Size {
    var width = 0.0 , height = 0.0
}

let twoByTwo = Size(width: 2.0, height: 2.0)

struct Point {
    var x = 0.0 , y = 0.0
}


struct Rect {
    var origin = Point()
    var size = Size()
    init(){}
    init(origin: Point, size:Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center:Point, size:Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size:size)
    }
    
}


let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))



class Vehicle {
    var numberOfWheels = 0
    var description : String {
        return " \(numberOfWheels) wheel(s)"
    }
}
let vehicle = Vehicle()
print("Vehicle: \(vehicle.description)")

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    convenience init() {
        self.init(name: "[Unnamed]")
    }
}



let food = Food(name: "Jay")
print(food.name)

class RecipeIngredient: Food {
    var quantity: Int
    init(name: String, quantity:Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        self.init(name:name, quantity:1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sexEggs = RecipeIngredient(name: "Eggs", quantity:6)

class ShoppingListItem : RecipeIngredient {
    var purchased = false
    var description: String {
        var output = "\(quantity) * \(name)"
        output += purchased ? " ✔" : " ✘"
        return output
    }
}


var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon") ,
    ShoppingListItem(name: "Eggs", quantity: 6)
    
]



breakfastList[0].name = "Orange juice"
breakfastList[0].purchased = true
for item in breakfastList {
    print(item.description)
}




struct Animal {
    let species: String
    init?(species:String){
        if species.isEmpty {return nil}
        self.species = species
        }
}


let someCreatures = Animal(species: "GuoXin")
if let GuoXin = someCreatures {
        print("An animial was initialized with a species of \(GuoXin.species)")
}


let GuoXin2 = Animal(species: "")
GuoXin2?.species
if GuoXin2 == nil {
    print("Guoxin could not be initialized")
}

enum TemperatureUnit {
    case Kelvin, Celsius , Fahrenheit
    init?(symbol: Character){
        switch symbol {
            case "K":
                self = .Kelvin
            case "C":
                self = .Celsius
            case "F":
                self = .Fahrenheit
        default:
            return nil
        }
    }
}



let fahrenheitUnit = TemperatureUnit(symbol: "B")

if fahrenheitUnit != nil {
    print("This is a defined temperature unit, so initialization succeeded.")
} else {
    print("There is nothing")
}

let unknownUnit = TemperatureUnit(symbol: "X")
if unknownUnit == nil {
    print("This is not a defined temperature unit, so initialization failed.")
}

enum TemperatureUnit2: Character {
    case Kelvin = "K", Celsius = "C", Fahrenheit = "F"
}

let fahrenheitUnit2 = TemperatureUnit2(rawValue: "F")
if fahrenheitUnit2 != nil {
    print("This is a defined temperatture unit.")
}

let unknownUnit2 = TemperatureUnit2(rawValue: "X")
if unknownUnit2 == nil {
    print("This is not a defined temperature unit, so initializaiton failed." )
}




class Product {
    let name: String!
    init?(name:String) {
        self.name = name
        if name.isEmpty {return nil}
    }
}

let aProd = Product(name:"a")
aProd!.name


class CartTime: Product {
    let quantity: Int!
    init?(name: String , quantity: Int){
        self.quantity = quantity
        super.init(name: name)
        print("This product is \(self.name)")
        if quantity < 1 {return nil}
    }
        
    
}

if let twoSocks = CartTime(name: "Socks", quantity: 2){
    print("Item: \(twoSocks.name), quantity: \(twoSocks.quantity)")
}

if let zeroShirts = CartTime(name: "Shorts", quantity: 0) {
    
}

class Document {
    var name: String!
    init(){}
    init!(name:String) {
        self.name = name
        if name.isEmpty {return nil}
    }
}

let aD = Document(name: "rest")

class AutomaticallyNamedDocument: Document {
    override init() {
        super.init()
        self.name = "[Untitled}"
    }
    
    override init(name: String){
        super.init()
        if name.isEmpty {
            self.name = "[Untitled]"
        } else {
            self.name = name
        }
    }
}

class SomeClass {
    required init() {
       // self.a = a
    }
}




class SomeClass2 {
    let someProperty: String = {
        let b = "Test"
        return b
    }()
}

let sc2 = SomeClass2()
print(sc2.someProperty)

struct CheckerBoard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        return temporaryBoard
    }()
    
    func squareIsBlackAtRow(row: Int, column:Int) -> Bool {
        return boardColors[row * 10 + column]
    }
    
}

let checkboard = CheckerBoard()
print(checkboard.squareIsBlackAtRow(0, column: 9))


