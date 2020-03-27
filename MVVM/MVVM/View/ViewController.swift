//
//  ViewController.swift
//  MVVM
//
//  Created by LMinh on 3/27/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// View reference here
    @IBOutlet weak var numberLabel: UILabel!
    
    /// View model reference here
    let viewModel = SimpleViewModel(model: SimpleModel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // View model bind here
        viewModel.setNumberText?.bindAndFire(handler: { [weak self] (text) in
            guard let self = self else { return }
            self.numberLabel.text = text
        })
    }

    @IBAction func randomButtonTapped(_ sender: Any) {
        viewModel.makeRandom()
    }
}

