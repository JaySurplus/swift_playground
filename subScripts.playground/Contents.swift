//: Playground - noun: a place where people can play

import Cocoa

var str = "Subscripts"




struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("Six times three is \(threeTimesTable[6])")

var numberOfLegs = ["spider": 8 , "ant": 6, "cat":4]
numberOfLegs["bird"] = 2
print(numberOfLegs)



struct Matrix {
    let rows: Int, columns:Int
    var grid: [Double]
    init(rows: Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(count: rows * columns, repeatedValue: 0.0)
    }
}

var aMatrix = Matrix(rows: 4, columns: 5)
aMatrix.grid