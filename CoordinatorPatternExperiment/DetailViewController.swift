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
    
    @IBOutlet weak var label: UILabel!
    
    weak var coordinator: DetailCoordinator?
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Detail"
        
        label.text = data
    }
    
}
