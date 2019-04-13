//
//  AppDelegate.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        /*
            Boilerplate code for non-tab architecture apps
            let navigationController = UINavigationController()
            let mainCoordinator = MainCoordinator(navigationController: navigationController)
            mainCoordinator.start()
        */
        
        // Init Window
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.rootViewController = MainTabBarController() // navigationController 
        
        return true
    }


}

