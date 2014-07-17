// Playground - noun: a place where people can play


var str = "Hello, playground"
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."

var shoppingList = ["Catfish","water","tulips","blue paint"]
shoppingList[1] = "bottle of water"


var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]

occupations["Jayue"] = "Public Relaitons"

let emptyArray = String[]()
let emptyDictionary = Dictionary<String,String>()

shoppingList = []

let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore


var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

let vegetable = "red pepper"
switch vegetable {
case "celery":
    let vegetableComment = "Add some raisins and make ants on a log."
case "cucumber","wahercress":
    let vegetableComment = "That would make a good tea sandwich."
case let x where x.hasSuffix("pepper"):
    let vegetableComment = "Is it a spicy \(x)?"
default:
    let vegetableComment = "Everything tastes good in soup."
    
}


let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]



var largest = 0
for (kind,numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}

largest



var n = 2
while n < 100 {
    n *= 2
}
n

var m = 2
do {
    m *= 2
} while m < 100
m


var firstForLoop = 0
for i in 0 .. 3 {
    firstForLoop += 1
}

firstForLoop

var secondForLoop = 0
for var i = 0 ; i < 3 ; ++i {
    secondForLoop += 1
}

secondForLoop


var thirdForLoop = 0
for var i = 0 ; i < 3 ; i++ {
    thirdForLoop += 1
}

thirdForLoop



func greet(name:String, lunch:String) -> String {
    return "Hello \(name), today's lunch special is \(lunch)."
}
greet("Bob","Chicken breast")


func getGasPrices() -> (Double,Double,Double) {
    return ( 3.4, 3.23, 4.23)
}
getGasPrices()



func sumOf(numbers: Int ...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sumOf()
sumOf(43, 23,100)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    
    add()
    return y
}

returnFifteen()




func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) ->Int {
        return 1 + number
    }
    return addOne
}

var increment = makeIncrementer()
increment(7)


func hasanyMatches(list: Int[], condition: Int -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}

var numbers = [ 20, 19 ,7 ,12]
hasanyMatches(numbers, lessThanTen)


numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })


numbers.map({ number in 3 * number})

sort([1,5,3,12,2]) { $0>$1 }


class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription: String?
shapeDescription = shape.simpleDescription()



class NamedShape {
    var numberOfSides: Int = 0
    var name:String
    
    init(name :String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}

class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name:name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}

let test = Square(sideLength: 5.2, name: "my test squre")
test.area()
test.simpleDescription()




class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
    get {
        return 3.0 * sideLength
    }
    set {
        
        sideLength = newValue / 3.0
    }
    }
    
    override func simpleDescription() -> String  {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")

triangle.perimeter
triangle.perimeter = 30.0
triangle.sideLength





class TriangleAndSquare {
    var triangle: EquilateralTriangle {
    willSet {
        square.sideLength = newValue.sideLength
    }
    }
    
    var square: Square {
    willSet {
        triangle.sideLength = newValue.sideLength
    }
    }
    
    init(size:Double,name:String) {
        square = Square(sideLength:size ,name:name)
        triangle = EquilateralTriangle(sideLength:size, name:name)
    }
}


var triangleAndSquare = TriangleAndSquare(size:10, name:"another test shape")
triangleAndSquare.square.sideLength
triangleAndSquare.triangle.sideLength
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
triangleAndSquare.triangle.sideLength





class Counter {
    var count : Int = 0
    func incrementBy(amount:Int, numberOfTimes times: Int) {
        count += amount * times
    }
}
var counter = Counter()
counter.incrementBy(2, numberOfTimes: 7)

let optionalSquare : Square? = Square(sideLength: 2.5, name: "optional square")

let sideLength = optionalSquare?.sideLength
































