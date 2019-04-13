//
//  Coordinator.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator: class {
    
    /// NavigationController is the container of the owner of this Coordinator
    var navigationController: UINavigationController { get set }
    
    /// Append ChildCoordinators here to keep track of Coordinators
    var childCoordinators: [Coordinator] { get set }
    
    /// Call start method when you want to initialize a ViewController
    func start()
    
}
