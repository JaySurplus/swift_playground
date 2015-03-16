// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var a = [1,2,3]
let testFilter = filter(a, {( a : Int ) -> Bool in  a >= 2 })
let testMap = map(a, {(a: Int) -> Int in a+2})
let testReduce = reduce(a, 1, {(a : Int , b : Int) -> Int in a + b})

println(testFilter)
println(testMap)
println(testReduce)


var s = "hello"
let index = advance(s.startIndex, 2)
println(s.startIndex)
println(index)
s.splice("abc", atIndex: index)

let startIndex = advance(s.startIndex, 1)
let endIndex = advance(s.startIndex, 6)
let subString = s[startIndex..<endIndex]

let num = "56.25"
let decimalRange = num.rangeOfString(".")
println(decimalRange)
if let decimalRange = num.rangeOfString(".") {
    let wholeNumber = num[num.startIndex..<decimalRange.startIndex]
}

let d: Double = 37.5
let f :  Float = 37.5
let x = Int(d)
let xd = Double(x)
let cgf = CGFloat(d)
let aa = Array("abc")
let ss = String(["a","b","c"])
let sss = String(52)
let ssss = "\(37.5)"

assert(valiation() != nil, "the validation function returns nil")



