//
//  SimpleViewController.swift
//  MVP
//
//  Created by LMinh on 3/26/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import UIKit

/// Protocol of abstract view
protocol SimpleView: class {
    func setNumberText(text: String)
}

class SimpleViewController: UIViewController, SimpleView {

    /// View reference here
    @IBOutlet weak var numberLabel: UILabel!
    
    /// Presenter reference here
    var presenter = SimplePresenter(model: SimpleModel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Presenter attach view here
        presenter.attachView(view: self)
    }

    /// Implement methods from abstract view Protocol
    func setNumberText(text: String) {
        numberLabel.text = text
    }
    
    @IBAction func randomButtonTapped(_ sender: Any) {
        presenter.makeRandom()
    }
}

