//
//  ConcreteCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class ConcreteCoordinator: NSObject, Coordinator, UINavigationControllerDelegate  {
    
    // MARK: - Variables
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    // MARK: - Functions
    
    /// This method will only be called internally
    func childDidFinish(_ child: Coordinator?) {
        for (index, coordinator) in childCoordinators.enumerated() {
            if coordinator === child {
                childCoordinators.remove(at: index)
                break
            }
        }
    }
    
    func childCoordinatorShouldNotBeDeleted(navigationController: UINavigationController) -> Bool {
        guard let fromViewController = navigationController.getFromViewController() else {
            return true
        }
        if navigationController.viewControllers.contains(fromViewController) {
            return true
        }
        return false
    }
    
    func start() {
        fatalError("start() should be overriden")
    }
    
}
