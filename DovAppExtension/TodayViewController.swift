//
//  TodayViewController.swift
//  DovAppExtension
//
//  Created by Dov Alperin on 6/17/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
    let value = true
    //var timer : Timer?
    @IBOutlet var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: Selector("widgetPerformUpdate:"), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view from its nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func widgetPerformUpdate(completionHandler: @escaping ((NCUpdateResult) -> Void)) {
        let date = NSDate().description(with: NSLocale.current)
        // Perform any setup necessary in order to update the view.
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        //"Extension"
        //let dateFormatter = DateFormatter()
        //dateFormatter.dateStyle = DateFormatter.Style.long
        //let convertedDate = dateFormatter.string(from: date as Date)
        text.text = date
        completionHandler(NCUpdateResult.newData)
       
    }
    
}
