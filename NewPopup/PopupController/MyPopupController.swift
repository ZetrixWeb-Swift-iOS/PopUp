//
//  MyPopupController.swift
//  SnowMowr
//
//
//  Created by Janak Thakkar on 27/12/16.
//  Copyright © 2016 ZetrixWeb. All rights reserved.
//

import Foundation
import UIKit

class MyPopupController: UIViewController {
    var pressOK : ((AnyObject?)-> ())?
    var pressCancel : (()-> ())?
    
    override func viewDidLoad() {
        appDelegate.window?.endEditing(true)
        super.viewDidLoad()
        self.view.layer.cornerRadius = 10
        self.view.layer.masksToBounds = true
        self.view.frame = {
            var frm = self.view.frame
            frm.size.width = UIScreen.mainScreen().bounds.width - 30
            return frm
        }()
    }
}
func displayViewController(animationType: SLpopupViewAnimationType,nibName : String, blockOK : ((AnyObject?) -> ())?,blockCancel : (() -> ())?) {
    let story : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    let myPopupViewController:MyPopupController = story.instantiateViewControllerWithIdentifier(nibName) as! MyPopupController
    myPopupViewController.pressOK = blockOK
    myPopupViewController.pressCancel = blockCancel
    appDelegate.window?.rootViewController!.presentpopupViewController(myPopupViewController, animationType: animationType, completion: { () -> Void in
        
    })
}
func dismissViewController() {
    appDelegate.window?.rootViewController!.dismissPopupViewController(.Fade)
}
