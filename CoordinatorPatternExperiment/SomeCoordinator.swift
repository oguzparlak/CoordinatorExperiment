//
//  SomeCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class SomeCoordinator: Coordinator {
    
    weak var parentCoordinator: CurrenciesCoordinator?
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let someVC = SomeViewController.instantiate()
        someVC.coordinator = self
        navigationController.pushViewController(someVC, animated: true)
    }
    
    
}
