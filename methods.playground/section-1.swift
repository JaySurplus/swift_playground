// Playground - noun: a place where people can play

import UIKit

var str = "Method"

class Counter {
    var count = 0
    func increment() {
        count++
    }
    
    func incrementBy(#amount: Int) {
        count += amount
    }
    
    func currentCount() -> Int {
        return count
    }
    
    func reset() ->Bool {
        count = 0
        return count == 0
    }
    
    func incrementByMulti(amount: Int , numberOfTimes: Int) {
        count += amount * numberOfTimes
    }
}


var aCounter = Counter()
aCounter.increment()
println(aCounter.currentCount())
aCounter.incrementBy(amount: 5)
println(aCounter.currentCount())
aCounter.reset()
println(aCounter.currentCount())
aCounter.incrementByMulti(5,  numberOfTimes:10)