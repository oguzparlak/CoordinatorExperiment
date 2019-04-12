//
//  DetailViewController.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController, Storyboardable {
    
    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detail"
    }
    
}
