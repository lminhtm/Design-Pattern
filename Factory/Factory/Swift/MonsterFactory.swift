//
//  MonsterFactory.swift
//  Factory
//
//  Created by LMinh on 8/9/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

import Foundation

enum MonsterType: Int {
    case Lion = 1
    case Dragon
    case Wolf
}

class MonsterFactory {
     static func createMonster(type: MonsterType) -> Monster {
        switch type {
        case .Lion:
            return Lion()
        case .Dragon:
            return Dragon()
        case .Wolf:
            return Wolf()
        }
    }
}
