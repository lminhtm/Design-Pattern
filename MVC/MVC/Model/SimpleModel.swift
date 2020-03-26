//
//  SimpleModel.swift
//  MVC
//
//  Created by LMinh on 3/26/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import Foundation

struct SimpleModel {
    var value: Int = 0
    
    mutating func makeRandom() {
        value = Int.random(in: 0..<100)
    }
}
