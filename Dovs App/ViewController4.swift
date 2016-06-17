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
    
    @IBAction func gocode(_ sender: AnyObject) {
    
        if let website = websitetext.text
        {
            let requestURL = URL(string: website)
            let request = URLRequest(url: requestURL!)
            webView.loadRequest(request)
            //gets data from text feild and then displays that with webview
            }
        }
    
    @IBAction func back(_ sender: AnyObject) {
        if webView.canGoBack {
            webView.goBack()
            //code for back button
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    self.gocode(self)
    self.websitetext.resignFirstResponder()
    return true
        //makes go button on keyboard work
    }
    

    
    @IBAction func gohome(_ sender: AnyObject) {
        self.performSegue(withIdentifier: "webtohome", sender: self)
        //back to home button
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
