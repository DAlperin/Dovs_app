//
//  ViewController2.swift
//  Dovs App
//
//  Created by Dov Alperin on 4/13/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
import UIKit

class ViewController2: UIViewController{
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBAction func back(sender: AnyObject) {
        self.performSegueWithIdentifier("back", sender: self)
    }
    @IBAction func nextpage(sender: AnyObject) {
     self.performSegueWithIdentifier("2to3", sender: self)
    }
   
    
   
    @IBAction func Segment(sender: AnyObject) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.performSegueWithIdentifier("back1", sender: self)
        case 1:
            print()
        default:
            break;
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
