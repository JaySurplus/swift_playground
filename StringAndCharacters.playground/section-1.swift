// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
let someString = "Some string literal value"
let sparklingHeart = "\U0001F496"

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    println("Nothing to see here")
}

var variableString = "Horse"
variableString += " and carriage"

var constantString = "Highlander"
constantString += " and another Highlander"

for character in "Dog!🐶" {
    println(character)
}

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"


let quotation = " We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    println("These two strings are considerd equal")
}

let normal = "Could you help me, please?"
let shouty = normal.uppercaseString
let whispered = normal.lowercaseString


let dogString = "Dog!🐶"
for scalar in dogString.unicodeScalars {
    println("\(scalar)")
}

