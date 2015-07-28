// Playground - noun: a place where people can play

import UIKit

var str = "Method"

let FirstMethod = "Instance Methods"

class Counter {
    var count = 0
    func increment() {
        ++count
    }
    func incrementBy(amount: Int){
        count += amount
    }
    
    func reset() {
        count = 0
    }
}

let counter = Counter()
counter.increment()
print(counter.count)
counter.incrementBy(5)
print(counter.count)
counter.reset()
print(counter.count)


class aCounter {
    var count: Int = 0
    func increment() {
        self.count++
    }
    
    func incrementBy(amount: Int, numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}

let acounter = aCounter()
acounter.incrementBy(5 , numberOfTimes: 3)
print(acounter.count)


struct Point {
    var x = 0.0, y = 0.0
    func isToTheRightOfX(x: Double) -> Bool {
        return self.x > x
    }
}

let somePoint = Point(x: 5.0 , y: 5.0)

if somePoint.isToTheRightOfX(1.0) {
    print("This point is to the right of the line where x == 1.0")
} else {
    print("This point is not to the right of the line where x == 1.0")
}


struct aPoint {
    var x = 0.0 , y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var aSomePoint = aPoint(x: 1.0 , y:1.0)
aSomePoint.moveByX(2.0, y:3.0)
print("The point is now at (\(aSomePoint.x) , \(aSomePoint.y))")




struct bPoint {
    var x = 0.0, y = 0.0
    mutating func moveByX(deltaX: Double, y deltaY : Double) {
        self = bPoint(x:x + deltaX , y : y + deltaY)
    }
}




enum TriStateSwitch {
    case Off , Low ,High
    mutating func next() {
        switch self {
        case Off:
            self = Low
        case Low:
            self = High
        case High:
            self = Off
        }
    }
}

var overLight = TriStateSwitch.Low
overLight.next()
overLight.next()
overLight.next()


class SomeClass {
    class func someTypeMethod() {
        print("Class function")
    }
}

SomeClass.someTypeMethod()

struct LevelTracker {
    static var highestUnlockedLevel = 1
    static func unlockLevel(level:Int) {
        if level > highestUnlockedLevel {
            highestUnlockedLevel = level
        }
    }
    
    static func levelIsUnlocked(level: Int) -> Bool {
        return level <= highestUnlockedLevel
    }
    
    var currentLevel = 1
    mutating func advanceToLevel(level: Int) -> Bool {
        if LevelTracker.levelIsUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}



class Player {
    var tracker = LevelTracker()
    let playerName : String
    func completedLevel(level : Int) {
        LevelTracker.unlockLevel(level + 1)
        tracker.advanceToLevel(level + 1)
    }
    init(name: String) {
        playerName = name
    }
}


var player = Player(name: "Argyrois")
player.completedLevel(1)
print("\(player.playerName)")
print("Highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")

player = Player(name: "Beto")
print(player.tracker.currentLevel)
if player.tracker.advanceToLevel(6) {
    print("Player is now on level \(player.tracker.currentLevel)" )
} else {
    print("Level 6 has bot yet been unlocked")
}










