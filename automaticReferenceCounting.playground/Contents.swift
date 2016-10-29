//: Playground - noun: a place where people can play

import UIKit

var str = "Automatic Reference Counting"


class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    var apartment: Apartment?
    deinit {
        print("\(name) is being deinitialized")
    }
}

class Apartment {
    let unit: String
    init(unit: String) {
        self.unit = unit
    }
    weak var tenant: Person?
    deinit {
        print("Apartment \(unit) is being deinitialized")
    }
}




var reference1: Person?
var reference2: Person?
var reference3: Person?

reference1 = Person(name: "John Appleseed")
reference2 = reference1
reference3 = reference1

reference1 = nil
reference2 = nil
reference3 = nil



var john: Person?
var unit4A: Apartment?

john = Person(name: "John Appleseed")
unit4A = Apartment(unit: "4A")

john!.apartment = unit4A
unit4A!.tenant = john



john = nil
//unit4A = nil
unit4A?.tenant


//Unowned References
class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
        print("Card #\(number) is being initialized")
    }
    deinit {
        print("Card #\(number) is being deinitialized")
    }
}
var john2: Customer?
john2 = Customer(name: "John Appleseed")
john2!.card = CreditCard(number: 1234_5678_9012_3456, customer: john2!)
john2!.card?.number
john2 = nil




class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}


class City {
    let name: String
    unowned let country: Country
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}

var country = Country(name: "Canada", capitalName: "Ottawa")
print("\(country.name)'s capital city is called \(country.capitalCity.name)")


class HTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        [unowned self] in
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
    }
    
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
}

let heading = HTMLElement(name: "h1")
let defaultText = "some default text"
heading.asHTML = {
    return "<\(heading.name)>\(heading.text ?? defaultText) </\(heading.name)>"
}

print(heading.asHTML())

var paragraph: HTMLElement? = HTMLElement(name: "p", text: "hello, world")
print(paragraph!.asHTML())

paragraph = nil

class Person2 {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}


class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if buildingName != nil {
            return buildingName
        } else if buildingNumber != nil && street != nil {
            return "\(buildingNumber) \(street)"
        } else {
            return nil
        }
    }
}

let john3 = Person2()
//john3.residence = Residence()

if let roomCount = john3.residence?.numberOfRooms {
    print("John3's residence has \(roomCount) rooms.")
} else {
    print("Unable to retrieve the number of rooms.")
}


let someAddress = Address()
someAddress.buildingName = "29"
someAddress.street = "Acacia Road"
john3.residence?.address = someAddress


func createAddress() -> Address {
    print("Function was called.")
    
    let someAddress = Address()
    someAddress.buildingName = "29"
    someAddress.street = "Acacia Road"
    
    return someAddress
}

john3.residence?.address = createAddress()
if john3.residence?.printNumberOfRooms() != nil {
    print("It was possible to print the number of rooms")
} else {
    print("It was not possible to print the number of rooms.")
}


if (john3.residence?.address = someAddress) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}


john3.residence?[0] = Room(name: "Bathroom")
let johnHouse = Residence()
johnHouse.rooms.append(Room(name:"Living Room"))
johnHouse.rooms.append(Room(name:"Kitchen"))
john3.residence = johnHouse

if let firstRoomName = john3.residence?[0].name {
    print("The first room name is \(firstRoomName)")
} else {
    print("Unable to retrieve the first room name.")
}

var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0] += 1
testScores["Brain"]?[0] += 72

let johnAddress = Address()
johnAddress.buildingName = "The Larches"
johnAddress.street = "Laurel Street"
john3.residence?.address = johnAddress

john3.residence?.address?.street

if let buildingIdentifier =
    john3.residence?.address?.buildingIdentifier() {
    print("John3's buidling identifier is \(buildingIdentifier).")
}

if let beginsWithThe =
    john3.residence?.address?.buildingIdentifier()?.hasPrefix("The") {
    if beginsWithThe {
        print("John's building identifier begins with \"The\".")
    } else {
        print("John's building identifier does not begin with \"The\".")
    }
}





