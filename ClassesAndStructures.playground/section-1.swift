// Playground - noun: a place where people can play

import UIKit

var str = "Classes and Structures"


class videoMode {
    var resoultion = Resolution()
    var interlaced = false
    var frameRate = 60.0
    var name: String? = "None"
}

struct Resolution {
    var width = 0
    var heigth = 0
}

let someResolution = Resolution()
let someVideoMode = videoMode()

println("The width of someResolution is \(someResolution.width)")

someVideoMode.resoultion.heigth = 1024
println(someVideoMode.resoultion.heigth)


let hd = Resolution(width: 1920, heigth:  1080)

let tenEighty = videoMode()
println(tenEighty.frameRate)
tenEighty.resoultion = hd
tenEighty.interlaced = true
hd.width
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30

tenEighty.frameRate


tenEighty === alsoTenEighty

