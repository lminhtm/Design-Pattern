//
//  SimpleViewController.swift
//  MVC
//
//  Created by LMinh on 3/26/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import UIKit

class SimpleViewController: UIViewController {
    
    /// View reference here
    @IBOutlet weak var numberLabel: UILabel!
    
    /// Model reference here
    var model: SimpleModel!
    
    /// And controller go down here
    override func viewDidLoad() {
        super.viewDidLoad()
        
        model = SimpleModel()
        updateUI()
    }
    
    func updateUI() {
        numberLabel.text = "\(model.value)"
    }
    
    @IBAction func randomButtonTapped(_ sender: Any) {
        model.makeRandom()
        updateUI()
    }
}

