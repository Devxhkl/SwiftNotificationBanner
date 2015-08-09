//
//  ViewController.swift
//  SwiftNotificationBannerDemo
//
//  Created by Zel Marko on 09/08/15.
//  Copyright (c) 2015 Zel Marko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        view.addSubview(navigationBanner)
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        SwitNotificationBanner.presentNotification("message")
//        performSegueWithIdentifier("show", sender: self)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

