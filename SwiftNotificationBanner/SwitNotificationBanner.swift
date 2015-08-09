//
//  SwitNotificationBanner.swift
//  SwiftNotificationBannerDemo
//
//  Created by Zel Marko on 09/08/15.
//  Copyright (c) 2015 Zel Marko. All rights reserved.
//

import UIKit

class SwitNotificationBanner: NSObject {
    
    class func presentNotification(title: String) {
        
        let bannerView = SwiftNotificationBannerView(frame: CGRect(x: 0, y: -22.0, width: UIScreen.mainScreen().bounds.width, height: 22.0))
        
        bannerView.messageLabel.text = title
                
        if let _window = UIApplication.sharedApplication().keyWindow {
            _window.addSubview(bannerView)
        }
        
        UIView.animateWithDuration(0.1, delay: 0.0, options: .CurveEaseIn, animations: {
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
