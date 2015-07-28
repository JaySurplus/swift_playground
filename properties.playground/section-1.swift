// Playground - noun: a place where people can play

import UIKit

var str = "Properties!"

struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
print("Length is \(rangeOfThreeItems.length)")
print("FirstValue is \(rangeOfThreeItems.firstValue)")

rangeOfThreeItems.firstValue = 6
print("FirstValue now is \(rangeOfThreeItems.firstValue)")


let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)
print("FirstValue is \(rangeOfFourItems.firstValue)")
//rangeOfFourItems.firstValue = 6




class DataImporter {
    var fileName = "data.txt"
}


class DataManager {
    lazy var importer = DataImporter()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Some data")
manager.data.append("Some more data")


print(manager.importer.fileName)



struct Point {
    var x = 0.0 , y = 0.0
}

struct Size {
    var width = 0.0 , height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}

var square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
print(initialSquareCenter)
square.center = Point(x: 15.0, y: 15.0)
print("square.origin is now at (\(square.origin.x), \(square.origin.y))")




struct AlternativeRect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set {
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}



struct Cuboid {
    var width = 0.0 , height = 0.0 , depth = 0.0
    var volume: Double {
        return width * height * depth
    }
}

let fourByFiveByTwo = Cuboid(width: 4.0, height: 5.0, depth: 2.0)

print("The volume of fourByFiveByTwo is \(fourByFiveByTwo.volume)")






class StepCounter {
    var totalSteps: Int = 0 {
        willSet {
            print("About to set totalSteps to \(newValue)")
        }
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 890
stepCounter.totalSteps = 800



struct SomeStructure {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 1
    }
}


let test = SomeStructure()
//print(test.computedTypeProperty)



enum SomeEnumeration {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 6
    }
}





class SomeClass {
    static var storedTypeProperty = "Some value."
    static var computedTypeProperty: Int {
        return 27
    }
    
    class var overrideableComputedTypeProperty: Int {
        return 107
    }
}


print(SomeStructure.storedTypeProperty)
SomeStructure.storedTypeProperty = "Another value."
print(SomeStructure.storedTypeProperty)
print(SomeStructure.computedTypeProperty)


print(SomeEnumeration.computedTypeProperty)
print(SomeEnumeration.storedTypeProperty)
SomeEnumeration.storedTypeProperty = "Another value."
print(SomeEnumeration.storedTypeProperty)

print(SomeClass.storedTypeProperty)
SomeClass.storedTypeProperty = "Another value"
print(SomeClass.storedTypeProperty)
print(SomeClass.computedTypeProperty)






struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel: Int = 0 {
        didSet {
            if currentLevel > AudioChannel.thresholdLevel {
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels {
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)
rightChannel.currentLevel = 11
print(rightChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)








