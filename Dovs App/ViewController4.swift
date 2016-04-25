//
//  ViewController4.swift
//  Dovs App
//
//  Created by Dov Alperin on 4/14/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//

import UIKit

class ViewController4: UIViewController, UITextFieldDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
}
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var websitetext: UITextField!
    
    @IBAction func gocode(sender: AnyObject) {
    
        if let website = websitetext.text
        {
            let requestURL = NSURL(string: website)
            let request = NSURLRequest(URL: requestURL!)
            webView.loadRequest(request)
            }
        }
    
    @IBAction func back(sender: AnyObject) {
        if webView.canGoBack {
            webView.goBack()
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
    self.gocode(self)
    self.websitetext.resignFirstResponder()
    return true
    }
    
    @IBAction func gohome(sender: AnyObject) {
        self.performSegueWithIdentifier("webtohome", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
