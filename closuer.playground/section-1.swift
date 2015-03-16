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
reserverd = sorted( name , { s1 , s2 in s1 > s2 })
reserverd = sorted( name , { $0 > $1 })
reserverd = sorted( name , > )


