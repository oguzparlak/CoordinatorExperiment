//
//  MainCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: ConcreteCoordinator {
    
    override func start() {
        navigationController.delegate = self
        let mainViewController = ViewController.instantiate()
        mainViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        mainViewController.coordinator = self
        navigationController.pushViewController(mainViewController, animated: false)
    }
    
    func navigateToDetailController(with data: String) {
        let child = DetailCoordinator(navigationController: navigationController)
        child.someData = data
        child.parentCoordinator = self
        childCoordinators.append(child)
        child.start()
    }
    
    func navigationController(_ navigationController: UINavigationController, didShow viewController: UIViewController, animated: Bool) {
        if childCoordinatorShouldNotBeDeleted(navigationController: navigationController) { return }
        if let detailViewController = navigationController.getFromViewController() as? DetailViewController {
            childDidFinish(detailViewController.coordinator)
        }
    }
    
}
