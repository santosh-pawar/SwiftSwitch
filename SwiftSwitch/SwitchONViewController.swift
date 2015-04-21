//
//  SwitchONViewController.swift
//  SwiftSwitch
//
//  Created by Pawar, Santosh-CW on 4/20/15.
//  Copyright (c) 2015 Pawar, Santosh. All rights reserved.
//

import UIKit

class SwitchONViewController: UIViewController {
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
    }

    @IBAction func okTapped(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
