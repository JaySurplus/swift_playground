//: Playground - noun: a place where people can play

import UIKit

var str = "Protocols"


protocol SomeProtocol {
    var mustBeSettable: Int {
        get set
    }
    var doesNotNeedToBeSettable: Int {
        get
    }
}

protocol FullyNamed {
    var fullName: String { get }
}


struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")

class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    
    var fullName: String {
        return (prefix != nil ? prefix! + " " : " ") + name
    }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
ncc1701.fullName

protocol RandomNumberGenerator {
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}


let generator = LinearCongruentialGenerator()
print("Here's a random number: \(generator.random())")
print("And another a random number: \(generator.random())")


protocol Togglable {
    mutating func toggle()
}

enum OnOffSwitch: Togglable {
    case off, on
    mutating func toggle() {
        switch self {
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}
var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()


protocol SomeProtocol2 {
    init()
}

class SomeSuperClass {
    init() {
        
    }
}

class SomeSubClass: SomeSuperClass, SomeProtocol2 {
    required override init() {
        
    }
}




