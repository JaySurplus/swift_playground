// Playground - noun: a place where people can play

//Enumerations and Structures


//Enumerations
enum Rank: Int {
    case Ace = 1
    case Two,Three,Four,Five,Six,Seven,Eight,Nine,Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
            
        }
        
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()
let aceDescription = ace.simpleDescription()

let jack = Rank.Jack
let jackRawValue = jack.toRaw()

let five = Rank.Five
let fiveDescription = five.simpleDescription()


if let convertedRank = Rank.fromRaw(3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case Spades, Hearts,Diamonds,Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "heart"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades , .Clubs:
            return "black"
        default:
            return "red"
        }
    }
    
}
let hearts = Suit.Hearts
let heartColor = hearts.color()
let heartsDescription = hearts.simpleDescription()


enum ServerResponse {
    case Result(String, String)
    case Error(String)
}

let success = ServerResponse.Result("6:00 am", "8:09 pm")
let failure = ServerResponse.Error("Out of cheese")


switch success {
case let .Result(sunrise, sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
case let .Error(error):
    let serverResponse = "Failure...  \(error)"
}





//Structures

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit:.Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()








//Protocols and Extensions.

protocol ExampleProtocol {
    var simpleDescription: String { get }
   // var absoluteValue: Double { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class"
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure:ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription






//Extension
extension Int: ExampleProtocol{
    var simpleDescription: String {
    return "The number \(self)"
    }
    mutating func adjust(){
        self += 42
    }
}
7.simpleDescription
var test = Int(10)
test.adjust()
let testDescription = test.simpleDescription



//“Write an extension for the Double type that adds an absoluteValue property.”

protocol ExampleProtocol2{
    var absoluteValue: Double { get }
}

extension Double: ExampleProtocol2 {
    
   var absoluteValue: Double {
    if self > 0 {
        return self
        }
    return -self
    }
}



var aDouble = Double(5.3)
let aDoubleAbsoluteValue = aDouble.absoluteValue

var anotherDouble = Double(-5.3)
let anotherDoubleAbsoluteValue = anotherDouble.absoluteValue






let protocolValue: ExampleProtocol = a
protocolValue.simpleDescription
//protocolValue




//Generics
func repeat<ItemType>(item:ItemType, times:Int) -> ItemType[] {
    var result = ItemType[]()
    for i in 0..times {
        result += item
    }
    return result
}


enum OptionalValue<T> {
    case None
    case Some(T)
}
var possibleInteger: OptionalValue<Int> = .None
possibleInteger = .Some(100)



func anyCommonElements <T, U where T: Sequence, U: Sequence, T.GeneratorType.Element: Equatable, T.GeneratorType.Element == U.GeneratorType.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])


//Basics
















