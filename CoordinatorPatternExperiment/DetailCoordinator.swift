//
//  DetailCoordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class DetailCoordinator: Coordinator {
    
    weak var parentCoordinator: MainCoordinator?
    
    var navigationController: UINavigationController
    
    var childCoordinators = [Coordinator]()
    
    // Data to be passed into DetailVC
    var someData: String?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let detailVC = DetailViewController.instantiate()
        detailVC.coordinator = self
        detailVC.data = someData
        navigationController.pushViewController(detailVC, animated: true)
    }
    
    
}
