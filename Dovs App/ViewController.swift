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
        self.shook.isHidden = true
    }
    @IBOutlet var name: UILabel!
    @IBOutlet var shook: UILabel!
    
    override func motionEnded(_ motion: UIEventSubtype,
                              with event: UIEvent?) {
        
        if motion == .motionShake{
            self.name.text = "SHAKE YOUR BOOTY"
            self.shook.isHidden = false
            let alertController = UIAlertController(title: "YOU SHOOK THIS PHONE", message: "Cool huh", preferredStyle: UIAlertControllerStyle.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) {
                UIAlertAction in
                print("SHOOK", terminator: "")
            }
          alertController.addAction(okButton)
        self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func Button1(_ sender: AnyObject) {
        let alertController = UIAlertController(title: "Dov's App Other button", message:
            "Go to browser?", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            self.okfunctionother()
            self.performSegue(withIdentifier: "toweb", sender: self)
            //if ok from the popup alert is clicked
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            self.cancelfunctionother()
            //if cancel from the popup alert is clicked
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
 
    }
    
    @IBAction func Button2(_ sender: AnyObject) {
        
        let alertController = UIAlertController(title: "Dov's App", message:
            "Hello, world!", preferredStyle: UIAlertControllerStyle.alert)
        
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default) {
            UIAlertAction in
            self.okfunction()
            self.performSegue(withIdentifier: "onetotwo", sender: self)
            //if ok from the popup alert is clicked
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel) {
            UIAlertAction in
            self.cancelfunction()
            //if cancel from the popup alert is clicked
        }
        
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        //alertController.addAction(UIAlertAction(title: "Dismiss", style: UIAlertActionStyle.Default,handler: nil))
        // alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default,handler: nil ))
        
        self.present(alertController, animated: true, completion: nil)

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

    
    @IBAction func and2(_ sender: AnyObject) {
        switch sender.selectedSegmentIndex {
            //toggle
        case 0:
        print("View controller 1 toggle case 0", terminator: "")
        case 1:
            self.performSegue(withIdentifier: "onetotwo", sender: self)
            print("View controller 1 toggle case 1 Segue 'onetotwo' going to second page", terminator: "")
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

//ons
