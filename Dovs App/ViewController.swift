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
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            self.okfunctionother()
            self.performSegueWithIdentifier("toweb", sender: self)
            //if ok from the popup alert is clicked
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            self.cancelfunctionother()
            //if cancel from the popup alert is clicked
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true, completion: nil)
 
    }
    
    @IBAction func Button2(sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Dov's App", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            self.okfunction()
            self.performSegueWithIdentifier("onetotwo", sender: self)
            //if ok from the popup alert is clicked
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel) {
            UIAlertAction in
            self.cancelfunction()
            //if cancel from the popup alert is clicked
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        //alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        // alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil ))
        
        self.presentViewController(alertController, animated: true, completion: nil)

    }
    
    func okfunctionother() {
     //Button1 alert on ok click
    }
    
    func cancelfunctionother() {
     //Button1 alert on cancel click
    }
    
    func okfunction() {
        //Button2 alert on ok click
    }
    
    func cancelfunction() {
        //Button2 alert on cancel click
    }

    
    @IBAction func and2(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
            //toggle
        case 0:
        print()
        case 1:
            self.performSegueWithIdentifier("onetotwo", sender: self)
        default:
            break; 
        }
    }
    
    /* func authenticateUser() {
    let context : LAContext = LAContext()
        var error : NSError?
        let myLocalizedReasonString : NSString = "Authentication is required"
        if context.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error) {}
        context.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: myLocalizedReasonString as String, reply: { (success : Bool, evaluationError : NSError?) -> Void in })
        
        func loadData() {
            // Will call this if authentification succededs
            print("Success")
           
        }
        
        if success {
            NSOperationQueue.mainQueue().addOperationWithBlock({ () -> Void in
            loadData()
            })
        }
        
    } */
    //above code is the start of a touch id authentification.
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

