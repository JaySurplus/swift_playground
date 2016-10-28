//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

var welcomeMessage : String
welcomeMessage = "Hello"

var red, green, blue: Double
var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"

print(friendlyWelcome)
print("The current value of friendlyWelcome is \(friendlyWelcome)")

let minValue = UInt32.min
let maxValue = UInt32.max

let meaningOfLife = 42
let pi = 3.14159
let anotherPi = pi + 0.0000026

let decimalInteger = 17
let binaryInterger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

1.25e2
1.25e-2

0xFp2
0xFp-2

let decimalDouble = 12.18
let exponentDouble = 1.212e1
let hexDecDouble = 0xC.3p0

let oneMillion = 1_000_000

// let cannotBeNegative: UInt8 = -1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi2 = Double(three) + pointOneFourOneFiveNine
print(pi2)

let integerPi = Int(pi2)

typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min

let orangesAreOrange = true
let turnipsAreDelicious = false

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
print("The status code is \(http404Error.0)")
print("The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")

var serverResponseCode: Int? = 404
serverResponseCode = nil

var surveyAnswer: String?


