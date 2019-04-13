//
//  CurrenciesCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

/// One of the Main Coordinators in View Hierarchy
class CurrenciesCoordinator: ConcreteCoordinator {
    
    override func start() {
        navigationController.delegate = self
        let currencyController = CurrencyController.instantiate()
        currencyController.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        currencyController.coordinator = self
        navigationController.pushViewController(currencyController, animated: true)
    }
    
    func redirectToSomeVC() {
        let someCoordinator = SomeCoordinator(navigationController: navigationController)
        someCoordinator.parentCoordinator = self
        childCoordinators.append(someCoordinator)
        someCoordinator.start()
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if childCoordinatorShouldNotBeDeleted(navigationController: navigationController) { return }
        if let detailViewController = navigationController.getFromViewController() as? SomeViewController {
            childDidFinish(detailViewController.coordinator)
        }
    }
    
    
}
