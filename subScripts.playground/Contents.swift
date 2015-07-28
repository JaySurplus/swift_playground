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
    
    func indexIsValidForRow(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    
    subscript(row : Int , column : Int) -> Double {
        get {
            assert(indexIsValidForRow(row, column: column) , "Index out of range")
            return grid[(row * columns) + column]
        }
        set(newGridValue) {
            assert(indexIsValidForRow(row, column: column), "Index out of range")
            grid[(row * columns) + column] = newGridValue
        }
    }
    
}

var aMatrix = Matrix(rows: 2, columns: 2)
aMatrix[0,1] = 1.5
aMatrix[1,0] = 3.2














