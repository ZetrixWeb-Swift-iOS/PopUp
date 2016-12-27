//
//  AlertCameraPopup.swift
//  Emacs
//
//
//  Created by Janak Thakkar on 27/12/16.
//  Copyright © 2016 ZetrixWeb. All rights reserved.
//


import UIKit

class AlertCountryPopup: MyPopupController {

    var str = ""
    
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet var btnOK: UIButton!
    @IBOutlet var btnCancel: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = str
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnCancelClick(sender: UIButton) {
        if (self.pressCancel != nil) {
            self.pressCancel!()
        }
    }
    
    @IBAction func btnOkClick(sender: UIButton) {
        if (self.pressOK != nil) {
            self.pressOK!("HI Janak")
        }
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
