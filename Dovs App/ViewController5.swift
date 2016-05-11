//
//  ViewController5.swift
//  Dovs App
//
//  Created by Dov Alperin on 5/11/16.
//  Copyright © 2016 Dov Alperin. All rights reserved.
//

import UIKit
import SceneKit

class ViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let scnView = self.view as! SCNView
        let scene = PrimitivesScene()
        scnView.scene = scene
        
        scnView.backgroundColor = UIColor.blackColor()
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
        // Do any additional setup after loading the view.
    }

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
