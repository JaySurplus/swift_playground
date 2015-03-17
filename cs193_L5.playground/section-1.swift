// Playground - noun: a place where people can play

import Cocoa

var str = "CS193 Lecture 5"


/*
Objective-C bridge
    1. NSString bridged to String
    2. NSArray bridged to Array<AnyObject>

*/

var aString = "This is a test."
let length = (aString as NSString).length

var anArray = ["a", "b", "c"]
var join = "-".join(anArray)
var cJS = (anArray as NSArray).componentsJoinedByString("-")



/*
Property List
*/
//let defauls = NSUserDefaults.standardUserDefaults()
//let plist : AnyObject = defauls.objectForKey(String)

/*
Views
*/

