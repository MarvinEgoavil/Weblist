//
//  AppDelegate.swift
//  TablasWebView
//
//  Created by user177281 on 19/10/2020.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

     var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        if #available(iOS 14.0, *) {
            window?.overrideUserInterfaceStyle = .light
        }
        return true
    }

  


}

