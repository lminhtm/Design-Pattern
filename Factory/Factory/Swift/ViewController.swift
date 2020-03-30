//
//  ViewController.swift
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lion = MonsterFactory.createMonster(type: .Lion)
        let dragon = MonsterFactory.createMonster(type: .Dragon)
        let wolf = MonsterFactory.createMonster(type: .Wolf)
        
        lion.appear()
        dragon.appear()
        wolf.appear()
        
        let randomType = Int(arc4random_uniform(3))
        let randomMonster = MonsterFactory.createMonster(type: MonsterType(rawValue: randomType)!)
        randomMonster.appear()
    }
}

