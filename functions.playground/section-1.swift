// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

func sayHello(#personName : String) -> String {
    let greeting = "Hello, \(personName)!"
    return greeting
}

println(sayHello(personName: "Jay"))





func minMax( externalName array : [Int]) -> (min: Int, max : Int )? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin , currentMax)
}

println(minMax(externalName: []))
//println(minMax(externalName: [1,2,3,4,5])[0])




//inout parameter
func swapTwoInts(inout a : Int, inout b : Int) {
    let temp = a
    a = b
    b = temp
}


var a = 3 , b = 4

println("a = \(a) , b = \(b)")

swapTwoInts(&a, &b)

println("a = \(a) , b = \(b)")


//Function type
func addTwoInts( #a : Int , #b : Int) -> Int {
    return a + b
}

var mathFunction:(Int , Int) -> Int = addTwoInts

println(mathFunction(5,6))

func printMathResult(mathFunction:( Int , Int )-> Int , a : Int , b : Int) {
    println("Result: \(mathFunction(a,b))")
}

printMathResult(addTwoInts , 4, 6)


















