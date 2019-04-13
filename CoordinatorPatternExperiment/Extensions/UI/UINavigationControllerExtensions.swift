//
//  UINavigationControllerExtensions.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

extension UINavigationController {
    func getFromViewController() -> UIViewController? {
        return self.transitionCoordinator?.viewController(forKey: .from)
    }
}
