//
//  ViewController.swift
//  SwiftSwitch
//
//  Created by Pawar, Santosh-CW on 4/20/15.
//  Copyright (c) 2015 Pawar, Santosh. All rights reserved.
//

import UIKit

let SwitchONViewControllerIdentifier = "SwitchONViewController"
let SwitchOFFViewControllerIdentifier = "SwitchOFFViewController"

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var updateSwitchLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    var helperClass:LoadViewControllerHelper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helperClass = LoadViewControllerHelper()
        helperClass.navVC = self.navigationController
        okButton.hidden = true
    }

    
    @IBAction func switchButtonTapped(sender: AnyObject) {
        if mySwitch.on{
            updateSwitchLabel.text = NSLocalizedString("ON_STATE", comment: "ON_STATE_KEY")
            mySwitch.thumbTintColor = UIColor.greenColor()
            mySwitch.onTintColor = UIColor.blueColor()
        }
        else{
            updateSwitchLabel.text = NSLocalizedString("OFF_STATE", comment: "OFF_STATE_KEY")
            mySwitch.thumbTintColor = UIColor.redColor()
            mySwitch.tintColor = UIColor.blueColor()
        }
        okButton.hidden = false
    }
    
    @IBAction func okTapped(sender: AnyObject) {
        if mySwitch.on{
            helperClass.loadViewController(SwitchONViewControllerIdentifier)
        }
        else{
            helperClass.loadViewController(SwitchOFFViewControllerIdentifier)
        }
    }
}