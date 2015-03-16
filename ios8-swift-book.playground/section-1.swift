// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var message1 = "Hello, swift"
var message2 = "Hello, swift2"


message1.uppercaseString

if message1 == message2 {
    println("Same message.")
} else {
    println("Not Same messages.")
}

let messagelabel = UILabel(frame: CGRectMake(0, 0, 300, 50))

messagelabel.text = message1
messagelabel.backgroundColor = UIColor.orangeColor()
messagelabel.textAlignment = NSTextAlignment.Center
messagelabel.layer.cornerRadius = 10.0
messagelabel.clipsToBounds = true
messagelabel


for i = 
