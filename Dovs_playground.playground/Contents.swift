//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var message = "Hello world the total is: "

print(message)

var a = 1
var b = 10

var total = a + b

print(message, total)

if (total < 100) {
    print("YAY!!!")
    
    let alertController = UIAlertController(title: "Dov's App Other button", message:
        "Go to browser?", preferredStyle: UIAlertControllerStyle.Alert)
    
    let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
        UIAlertAction in
                //if ok from the popup alert is clicked
    }
    
    let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
        UIAlertAction in
       
    }
    
    
}

