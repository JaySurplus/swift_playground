// Playground - noun: a place where people can play

import Cocoa
// Two collection types, array and dictionaries.
// Array


var shoppingList: String[ ] = ["Eggs","Milk"]
var shoppingList2 = ["Eggs","Milk"]

println("The shopping list contains \(shoppingList.count) items")

if shoppingList.isEmpty {
    println("THis shopping list is empty.")
} else {
    println("The shopping list is not empty")
}

shoppingList.append("Flour")

shoppingList

shoppingList += "Baking Powder"

shoppingList += ["Chocolate Spread","Cheese","Butter"]

var fistItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList

shoppingList[4...6]
shoppingList[4..6]
shoppingList[shoppingList.count-1]
shoppingList.insert("Maple Syrup",atIndex:0)

let apples = shoppingList.removeLast()

for item in shoppingList {
    println(item)
}

var list = []



list

var someInts = Int[]()
println("someInts is of type Int[] with \(someInts.count) items.")
someInts.append(3)

var threeDoubles = Double[](count:3, repeatedValue: 0.0)
var anotherThreeDoubles = Array(count:3, repeatedValue: 2.5)
var sixDoubles = threeDoubles + anotherThreeDoubles
var sixDoubles2 = anotherThreeDoubles + threeDoubles




//Dictionaries
//字典是用来储存多个相同类型数据的容器
//It is key - value pairs
//Dictionary<keyType, ValueType>


var airports:Dictionary<String, String> = ["TYO": "Tokyo","DUB":"Dublin"]



"The dictionary of airports contains \(airports.count) of items"

airports["LHR"] = "London"

airports

if let airportName = airports["DUB"] {
    "The name of the airport is  \(airportName)."
} else {
    "That airport is not in th airports dictionary."
}

airports["APL"] = "Apple International"
airports["APL"] = nil


if let removedValue = airports.removeValueForKey("DUB") {
    "The removed airport's name is \(removedValue)."
} else {
    "The airports dictionary does not contain a value for DUB."
}

for (airportCode, airportName) in airports {
    "\(airportCode): \(airportName)"
} 

for airportCode in airports.keys {
    "Airport code: \(airportCode)"
}

for airportName in airports.values {
    "Airport name: \(airportName)"
}

let airportCodes = Array(airports.keys)

let airportNames = Array(airports.values)

//Creating an Empty Dictionary
var namesOfIntegers = Dictionary<Int,String>()
namesOfIntegers[16] = "sixteen"



////////////////////////////
//Mutablility of Collections








































