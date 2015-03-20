// Playground - noun: a place where people can play

import UIKit

var str = "Method"

class Counter {
    var count = 0
    func increment() {
        self.count++
    }
    
    func incrementBy(#amount: Int) {
        self.count += amount
    }
    
    func currentCount() -> Int {
        return self.count
    }
    
    func reset() ->Bool {
        self.count = 0
        return self.count == 0
    }
    
    func incrementByMulti(amount: Int , _ numberOfTimes: Int) {
        self.count += amount * numberOfTimes
    }
}


var aCounter = Counter()
aCounter.increment()
println(aCounter.currentCount())
aCounter.incrementBy(amount: 5)
println(aCounter.currentCount())
aCounter.reset()
println(aCounter.currentCount())
aCounter.incrementByMulti(5,  10)



struct Point {
    var x = 0.0 , y = 0.0
    func isToTheRightOfX(x : Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveByX(deltaX: Double , y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
    
}




enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case off:
            self = low
        case low:
            self = high
        case high:
            self = off
        }
    }
}

var TSW = TriStateSwitch.low
println(TSW.next())


//Type Methods
class typeMethods {
    class func test(){

    }
}


println(typeMethods.test())



class Player {
    var playerName:String
    
    init(name: String) {
        playerName = name
    }
}
var aPlayer = Player(name: "郭惹")

