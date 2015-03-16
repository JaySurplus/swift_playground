// Playground - noun: a place where people can play

import Cocoa
////
//Control Flow
//Swift provides C-like control flow.\

var aArray = [Int]()
for index in 1...5 {
    aArray.append(index * 10)
}

let someCharacter: Character = "e"
switch someCharacter {
    case "a" , "e", "i" :
        println("\(someCharacter) is a vowel")
    default:
        println("\(someCharacter) is not a vowel or a consonant")
}


let individualScores = [75, 43, 103, 87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore


var optionalString: String? = "Hello"
optionalString == nil
var optionalName: String? = nil
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, Jay"
}

let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25]
]

var largest = 0
for (kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

largest


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y  += 5
    }
    add()
    return y
}

returnFifteen()

func makeIncresmentr() -> (Int -> Int) {
    func addOne(number: Int) -> Int{
        return 1 + number
    }
    return addOne
}

var increment = makeIncresmentr()
increment(7)

var j = 2
for var i = 0 ; i < 6 ; ++i {
    j += j * i
}




