//
//  Monster.swift
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

import Foundation

class Monster {
    func appear() {
        // For subclass
    }
}

class Lion: Monster {
    override func appear() {
        print("A lion has appeared!")
    }
}

class Dragon: Monster {
    override func appear() {
        print("A dragon has appeared!")
    }
}

class Wolf: Monster {
    override func appear() {
        print("A wolf has appeared!")
    }
}
