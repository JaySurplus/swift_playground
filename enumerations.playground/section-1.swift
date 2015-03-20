// Playground - noun: a place where people can play

import UIKit

var str = "Enumerations"

enum CompassPoint {
    case North
    case South
    case East
    case West
}

var directionToHead = CompassPoint.East
directionToHead = .West


enum Planet : Int{
    case Mercury = 1, Venus , Earth , Mars
}
let somePlanet = Planet.Earth



switch somePlanet {
case .Earth:
    println("Safe place")
default :
    println("Not a safe place")
}


enum Barcode {
    case UPCA(Int , Int , Int, Int)
    case QRCode(String)
}