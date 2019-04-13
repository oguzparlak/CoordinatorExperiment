//
//  ViewController.swift
//  CoordinatorPatternExperiment
//
//  Created by Digital Ozellesmis on 12.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, Storyboardable {

    weak var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onDetailButtonTapped(_ sender: UIButton) {
        coordinator?.navigateToDetailController(with: "Oguz Parlak")
    }
    
}

