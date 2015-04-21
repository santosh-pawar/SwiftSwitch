//
//  LoadViewControllerHelper.swift
//  SwiftSwitch
//
//  Created by Pawar, Santosh-CW on 4/20/15.
//  Copyright (c) 2015 Pawar, Santosh. All rights reserved.
//

import UIKit

class LoadViewControllerHelper: NSObject {

    var navVC : UINavigationController!
    
    func loadViewController(identifier:String){
        let viewC = getViewControllerFromStoryBoard(identifier)
        navVC.presentViewController(viewC, animated: true, completion: nil)
    }
    
    func getViewControllerFromStoryBoard(vcIdentifier:String) -> UIViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewControllerWithIdentifier(vcIdentifier) as UIViewController
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        return storyboard
    }
}
