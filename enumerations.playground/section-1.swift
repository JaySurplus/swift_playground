// Playground - noun: a place where people can play

import UIKit

var str = "Enumerations"

enum CompassPoint : String {
    case North
    case South
    case East
    case West
}

var directionToHead = CompassPoint.East
directionToHead = .West



switch directionToHead {
    case .North:
        print("Lots of planets have a north")
    case .South:
        print("Watch out penguins")
    case .East:
        print("Where the sun rise")
    case .West:
        print("Where the skies are blue")
}

directionToHead = .North

print(directionToHead)

enum Planet : Int{
    case Mercury = 1, Venus , Earth , Mars , Jupiter , Saturn , Uranus , Neptune
}

var rawValue = "raw value"

let somePlanet = Planet.Venus
let earthOrder = Planet.Earth.rawValue
let sunsetDirection = CompassPoint.West.rawValue


switch somePlanet {
case .Earth:
    print("Safe place")
default :
    print("Not a safe place")
}


enum Barcode {
    case UPCA(Int , Int , Int, Int)
    case QRCode(String)
}

var productBarcode = Barcode.UPCA(8, 85909, 51226, 3)

productBarcode = .QRCode("THIS IS A TEST")

switch productBarcode {
    case .UPCA(let numberSystem , let manufacturer , let product , let check):
        print("UPC-A: \(numberSystem), \(manufacturer), \(product), \(check).")
    
    case .QRCode(let productCode):
        print("QR code: \(productCode)")
    
}

enum ASCIIControlCharacter: Character {
    case Tab = "\t"
    case LineFeed = "\n"
    case CarriageReturn = "\r"
}


var initializingRawValue = "Initializing from a Raw Value"

let possiblePlant = Planet(rawValue: 7)
let anotherPossiblePlant = Planet(rawValue: 11)

let positionToFind = 9

if let somePlanet = Planet(rawValue: positionToFind) {
    switch somePlanet {
    case .Earth:
        print("Mostly harmless")
    default:
        print("Not a safe place for humans")
    }
} else {
    print("There isn't a planet at position \(positionToFind)")
}



let RecursiveEnumerations = "Recursive Tnumerations"

enum ArithmeticExpression {
    case Number(Int)
    indirect case Addition(ArithmeticExpression, ArithmeticExpression)
    indirect case Multiplication(ArithmeticExpression, ArithmeticExpression)
}


func evaluate(expression: ArithmeticExpression) -> Int {
    switch expression {
    case .Number(let value):
        return value
    case .Addition(let left, let right):
        return evaluate(left) + evaluate(right)
    case .Multiplication(let left, let right):
        return evaluate(left) * evaluate(right)
    }
}


let five = ArithmeticExpression.Number(5)
let four = ArithmeticExpression.Number(4)
let sum = ArithmeticExpression.Addition(five , four)
print(evaluate(sum))

















