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
print("six times three is \(threeTimesTable[5])")

print(threeTimesTable)

var numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
numberOfLegs["birds"] = 2
numberOfLegs["spider"]

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column),
                   "Index out of range")
            return grid[(row * columns) + column]
        }
        
        set {
            assert(indexIsValid(row: row, column: column),
                   "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
    
    
}

var testMatrix = Matrix(rows: 4, columns: 4)
print(testMatrix[3,3])
testMatrix[3,3] = 3
print(testMatrix[3,3])