//
//  Coordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var navigationController: UINavigationController { get set }
    var childCoordinators: [Coordinator] { get set }
    
    func start()
    
}
