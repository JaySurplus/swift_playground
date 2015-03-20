// Playground - noun: a place where people can play

import UIKit

var str = "Properties!"

struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItems.firstValue = 6


//Lazy stored properties
class DataImporter {
    var fileName = "Data.txt"
}

class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")
manager
println(manager.importer.fileName)
manager


struct Point {
    var x = 0.0 , y = 0.0
}

struct Size {
    var width = 0.0 , height = 0.0
}


struct Rect {
    var origin = Point()
    var size = Size()
    var center : Point {
        get {
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x: centerX , y: centerY)
        }
        
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}



var square = Rect(origin: Point(x:0.0 , y:0.0), size: Size(width: 10.0, height: 10.0))

let initialSquareCenter = square.center

square.center = Point(x:15.0 , y:15.0)



struct Chboid {
    var width = 0.0 , height = 0.0 , depth = 0.0
    var volume : Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Chboid(width: 4.0, height: 5.0, depth: 2.0)

fourByFiveByTwo.volume


class StepCounter {
    var totalSteps : Int = 0 {
        willSet(newTotalSteps) {
            println("New \(newTotalSteps)")
        }
        didSet {
            if totalSteps > oldValue {
                println("Added \(totalSteps - oldValue)")
            }
        }
    }
}



let test = StepCounter()
test.totalSteps = 50
println(test.totalSteps)
test.totalSteps = 200
test.totalSteps



struct SomeStructure {
    static var storeTypeProperty = "Some value."
    static var computedTypeProperty : Int {
        return 0
    }
}


enum SomeEnumeration {
    static var storeTypeProperty = "Some value."
    static var computedTypeProperty : Int {
        return 0
    }
}



class SomeClass {
    class var computedTypeProperty: Int {
        return 0
    }
}

println(SomeStructure.storeTypeProperty)


struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInput = 0
    var currentLevel : Int {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            
            if currentLevel > AudioChannel.maxInput {
               AudioChannel.maxInput = currentLevel
            }
            
        }
    }
}


var rightChannel = AudioChannel(currentLevel: 5)
var leftChannel = AudioChannel(currentLevel: 7)

println(rightChannel.currentLevel)
println(leftChannel.currentLevel)

rightChannel.currentLevel = 11
println(rightChannel.currentLevel)










