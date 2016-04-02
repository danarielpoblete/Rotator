//
//  AppDelegate.swift
//  Rotator
//
//  Created by Dan on 3/4/16.
//  Copyright © 2016 DanArielPoblete. All rights reserved.
//

import UIKit
import Swinject
import URLNavigator

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Initialize dependencies
        let container = ContainerFactory().build()
        URLNavigationMap.initialize()
        
        // Launch
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.makeKeyAndVisible()
        
        // Set root
        if let url = NSURL(string: "rotatorapp://rotator/123"), root = Navigator.viewControllerForURL(url) {
            let nav = UINavigationController(rootViewController: root)
            window?.rootViewController = nav
        }
        
        return true
    }
}

