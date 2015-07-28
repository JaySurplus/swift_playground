// Playground - noun: a place where people can play

import UIKit

var str = "Classes and Structures"


class VideoMode {
    var resoultion = Resolution()
    var interlaced = false
    var frameRate = 60.0
    var name: String?
}

struct Resolution {
    var width = 0
    var heigth = 0
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resoultion.width)")
someVideoMode.resoultion.width = 1024
print("The width of someVideoMode is \(someVideoMode.resoultion.width)")





let hd = Resolution(width: 1920, heigth:  1080)

var cinema = hd

cinema.width = 2048
print("Cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) pixels wide")

enum CompassPoint {
    case North , South , East , West
}

var currentDirection = CompassPoint.West

let rememberedDirection = currentDirection
currentDirection = .East
if rememberedDirection == .West {
    print("The rememberd direction is still .West")
}

let tenEighty = VideoMode()
tenEighty.resoultion = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0


print("The frameRate property of tenTighty is now \(tenEighty.frameRate)")


if tenEighty === alsoTenEighty {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}





