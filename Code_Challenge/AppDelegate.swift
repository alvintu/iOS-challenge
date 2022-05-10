//
//  AppDelegate.swift
//  Code_Challenge
//
//  Created by Austin Feight on 11/25/18.
//  Copyright © 2018 JOOR. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
	  
	  let navigationController = UINavigationController()
	  navigationController.setViewControllers([TweetFeedViewController(), LoginViewController()], animated: false)

	  window = UIWindow(frame: UIScreen.main.bounds)
	  window?.rootViewController = navigationController
	  window?.makeKeyAndVisible()
    return true
  }
	
}

