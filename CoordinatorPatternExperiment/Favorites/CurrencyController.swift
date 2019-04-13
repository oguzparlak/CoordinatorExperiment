//
//  CurrencyController.swift
//  CoordinatorPatternExperiment
//
//  Created by Oguz Parlak on 13.04.2019.
//  Copyright © 2019 Digital Ozellesmis. All rights reserved.
//

import UIKit

class CurrencyController: UIViewController, Storyboardable {
    
    weak var coordinator: CurrenciesCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Currencies"
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        coordinator?.redirectToSomeVC()
    }
    
}
