// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let name = ["Jay","Alex", "Ewa", "Barry", "Daniella"]
var reserverd = sorted(name , {(s1 : String , s2 : String) -> Bool in return s1 > s2} )

func backward( s1 : String , s2 : String) -> Bool {
    return s1 < s2
}

var reserverd2 = sorted(name, backward)

println("Forwards : \(reserverd2)")
println("Backward : \(reserverd)")


reserverd = sorted( name , { s1 , s2 in return s1 > s2})
//reserverd = sorted( name , { s1 , s2 in s1 > s2 })
//reserverd = sorted( name , { $0 > $1 })
reserverd = sorted( name , > )


//Trailing Closeres
let digitNames = [ 0 : "zero"  , 1 : "one" , 2 : "two" ,
    3 : "Three" , 4 : "four" , 5 : "five" , 6 : "six" , 7 : "seven" , 8 : "eight" , 9 : "nine" ]
let numbers = [ 11 , 22 ,36]

let strings = numbers.map({(var number) -> String in var output = ""
    while number > 0 {
        output = digitNames[number % 10]!  + output
        number /= 10
    }
    return output
})
println( strings)

let double = numbers.map{ (number : Int) -> Int in
    return number * 2
}




func makeIncrecementor(amount : Int) -> () -> Int {
    var runningTotal = 0
    func incrementor() -> Int {
        runningTotal += amount
        return runningTotal
    }

    return incrementor
}

let incrementByTen = makeIncrecementor(10)

incrementByTen()
incrementByTen()
incrementByTen()