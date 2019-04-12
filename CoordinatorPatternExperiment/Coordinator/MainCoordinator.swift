//
//  MainCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainViewController = ViewController.instantiate()
        mainViewController.coordinator = self
        navigationController.pushViewController(mainViewController, animated: false)
    }
    
    func navigateToDetailController() {
        let detailVC = DetailViewController.instantiate()
        detailVC.coordinator = self
        navigationController.pushViewController(detailVC, animated: true)
    }
    
}
