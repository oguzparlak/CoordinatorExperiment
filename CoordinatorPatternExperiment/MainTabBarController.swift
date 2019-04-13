//
//  MainTabBarController.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    let mainCoordinator = MainCoordinator(navigationController: UINavigationController())
    
    let currencyCoordinator = CurrenciesCoordinator(navigationController: UINavigationController())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainCoordinator.start()
        currencyCoordinator.start()
        
        viewControllers = [mainCoordinator.navigationController, currencyCoordinator.navigationController]
    }
    
}
