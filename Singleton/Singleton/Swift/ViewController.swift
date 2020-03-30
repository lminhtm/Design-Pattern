//
//  ViewController.swift
//  Singleton
//
//  Created by LMinh on 8/8/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        // Access NetworkManager
        if let baseURL = NetworkManager.sharedInstance.baseURL {
            print(baseURL)
        }
    }
}

