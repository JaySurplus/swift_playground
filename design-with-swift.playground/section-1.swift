// Playground - noun: a place where people can play

import UIKit

var str : String = "Junzhe Zheng"

var num : Int = 42


let canvas = UIView(frame: CGRectMake(0, 0, 200, 200))
canvas.backgroundColor = UIColor.blueColor()

let title = UILabel(frame: CGRectMake(50, 50, 100, 20))
title.text = str
title.textColor = UIColor.whiteColor()
title.textAlignment = NSTextAlignment.Center

let button = UIButton(frame: CGRectMake(50, 100, 100, 50))
button.backgroundColor = UIColor.whiteColor()
button.setTitle("Jay", forState: UIControlState.Normal)
button.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
button.layer.cornerRadius = 10
button.layer.shadowColor = UIColor.blackColor().CGColor
button.layer.shadowOpacity = 0.1
button.layer.shadowOffset = CGSizeMake(5, 10)
button.layer.shadowRadius = 10




canvas.addSubview(title)
canvas.addSubview(button)


