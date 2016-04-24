//
//  ViewController.swift
//  Dovs App
//
//  Created by Dov Alperin on 4/13/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Button1(sender: AnyObject) {
        let alertController = UIAlertController(title: "Dov's App Other button", message:
            "Go to browser?", preferredStyle: UIAlertControllerStyle.Alert)
        print("otherbutton clicked")
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            self.okfunctionother()
            self.performSegueWithIdentifier("toweb", sender: self)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            self.cancelfunctionother()
            
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
 
    }
    
    @IBAction func Button2(sender: AnyObject) {
        print("Button clicked")
        let alertController = UIAlertController(title: "Dov's App", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            print("OK Pressed")
            self.okfunction()
            
            
            self.performSegueWithIdentifier("onetotwo", sender: self)
            
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            print("Cancel Pressed")
            self.cancelfunction()
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        //alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        // alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil ))
        
        self.presentViewController(alertController, animated: true, completion: nil)

    }
    
    func okfunctionother() {
        print("Ok button from otherbutton was pressed")
    }
    
    func cancelfunctionother() {
        print("Cancel button from otherbutton was pressed")
    }
    
    func okfunction() {
        print("Ok button from otherbutton was pressed")
    }
    
    func cancelfunction() {
        print("Cancel button from otherbutton was pressed")
    }

    
    @IBAction func and2(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
        case 0:
        print()
        case 1:
            self.performSegueWithIdentifier("onetotwo", sender: self)
        default:
            break; 
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

