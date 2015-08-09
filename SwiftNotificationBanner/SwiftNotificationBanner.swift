//
//  SwiftNotificationBanner.swift
//  SwiftNotificationBannerDemo
//
//  Created by Zel Marko on 09/08/15.
//  Copyright (c) 2015 Zel Marko. All rights reserved.
//

import UIKit

class SwiftNotificationBanner: NSObject {
    
//    var delay = 0.0
    
    class func presentNotification(title: String, delay: Float) {
        
        SwiftNotificationBanner().present(title, delay: delay)
        
    }
    
    func present(title: String, delay: Float) {
        
        let bannerView = SwiftNotificationBannerView(frame: CGRect(x: 0, y: -22.0, width: UIScreen.mainScreen().bounds.width, height: 22.0))
        
        bannerView.messageLabel.text = title
        
        if let _window = UIApplication.sharedApplication().keyWindow {
            _window.addSubview(bannerView)
            println("No delay")
        }
        else {
//            delay = 1.0
            println("Yes delay")
        }
        
        
        UIView.animateWithDuration(0.1, delay: 1.0, options: .CurveEaseIn, animations: {
            bannerView.transform = CGAffineTransformMakeTranslation(0, 22.0)
            
            }, completion: {
                finished in
                
                UIView.animateWithDuration(0.1, delay: 2.0, options: .CurveEaseOut, animations: {
                    bannerView.transform = CGAffineTransformIdentity
                    }, completion: {
                        finished in
                        
                        bannerView.removeFromSuperview()
                })
        })

    }
   
}
