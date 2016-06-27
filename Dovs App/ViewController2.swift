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
    @IBOutlet var name: UILabel!
    @IBOutlet var button1out: UIButton!
    @IBOutlet var button2out: UIButton!
    @IBOutlet var `switch`: UISegmentedControl!
   
    @IBAction func back(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "back", sender: self)
    }
    
    @IBAction func nextpage(_ sender: AnyObject) {
     self.performSegue(withIdentifier: "2to3", sender: self)
    }
   
    @IBAction func Segment(_ sender: AnyObject) {
        switch sender.selectedSegmentIndex {
            //toggle
        case 0:
            self.performSegue(withIdentifier: "back1", sender: self)
        case 1:
            print("", terminator: "")
        default:
            break;
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
