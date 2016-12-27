//
//  ViewController.swift
//  NewPopup
//
//
//  Created by Janak Thakkar on 27/12/16.
//  Copyright © 2016 ZetrixWeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func btnPopupClick(sender: AnyObject) {
        
        let story : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewControllerWithIdentifier("AlertCountryPopup") as! AlertCountryPopup
        controller.str = "i M Lokesh Dudhat"
        controller.pressOK = { (obj) -> () in
            dismissViewController()
            print(obj)
        }
        controller.pressCancel = {() -> Void in
            dismissViewController()
        }
        appDelegate.window?.rootViewController!.presentpopupViewController(controller, animationType: .Fade, completion: { () -> Void in
            
        })
    }

}
/*
displayViewController(.Fade, nibName: "AlertCountryPopup", blockOK: { (obj) -> () in
dismissViewController()
}) { () -> () in
dismissViewController()
}
*/
