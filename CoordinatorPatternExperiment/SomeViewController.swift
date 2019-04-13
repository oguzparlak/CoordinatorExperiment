//
//  SomeViewController.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class SomeViewController: UIViewController, Storyboardable {
    
    weak var coordinator: SomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Some VC"
    }
    
}
