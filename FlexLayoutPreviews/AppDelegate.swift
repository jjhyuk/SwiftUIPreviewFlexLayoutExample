//
//  AppDelegate.swift
//  FlexLayoutPreviews
//
//  Created by Denver on 2022/03/31.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
  
    // Override point for customization after application launch.
    window?.rootViewController = ViewController()
    window?.makeKeyAndVisible()
    
    return true
  }


}

