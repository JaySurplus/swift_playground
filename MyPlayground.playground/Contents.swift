//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

let defaults = NSUserDefaults.standardUserDefaults()

defaults.setInteger(25, forKey: "Age")
defaults.setBool(true, forKey: "UseTouchID")
defaults.setDouble(M_PI, forKey: "Pi")

defaults.setObject("Junzhe Zheng", forKey: "Name")

let array = ["Hello", "World"]
defaults.setObject(array, forKey: "SavedArray")
let dict = ["Name": "Paul", "Country": "UK"]
defaults.setObject(dict, forKey: "SavedDict")

let array = defaults.objectForKey("SavedArray") as? [String] ?? [String]()