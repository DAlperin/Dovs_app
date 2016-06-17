//
//  ViewController3.swift
//  Dovs App
//
//  Created by Dov Alperin on 4/14/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//

import UIKit

class ViewController3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func back1(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "back3", sender: self)
        //goes back a page
    }
    
    //@IBAction func tolast(sender: AnyObject) {
        //self.performSegueWithIdentifier("3to4", sender: self)
    //}
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
