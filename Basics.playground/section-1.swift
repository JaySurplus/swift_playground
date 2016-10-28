// Playground - noun: a place where people can play


//Basics

import Cocoa

var str = "Hello, playground"

let b = 10
var a = 5
a = b

let (x, y ) = (1,2)

if x != y {
    print(x)
}

"hello," + "world"

let dog: Character = "🐶"
let cow: Character = "🐮"
let dogcow = dog + cow

9 % 4

-9 % 4

8 % 2.5

var i = 0
++i
--i

var aa = 0
let bb = ++aa

let c = aa++
let d = aa

let three = 3
let minusThree = -three
let plusThree = -minusThree


let minusSix = -6
let alsoMinusSix = +minusSix

1 == 1
2 != 1
2 > 1
1 < 2
1 >= 1
2 <= 1


let name = "world"
if name == "world" {
    println("hello, world")
}   else {
    println("I'm sorry \(name), but I don't recognize you")
}


let contentHeight = 40
let hasHeader = false
let rowHeight = contentHeight + (hasHeader ? 50 : 20)


let array:[Int] = [1,2,3,4]
let names = ["Anna","Alex","Brain","Jack"]
let count = names.count
for i in 0..count {
    println("\(names[i])")
}




