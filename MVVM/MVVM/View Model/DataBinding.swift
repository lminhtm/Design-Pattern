//
//  DataBinding.swift
//  MVVM
//
//  Created by LMinh on 3/27/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import Foundation

class DataBinding<T> {
    
    typealias Handler = (T) -> Void
    private var handlers: [Handler] = []
    
    var value: T {
        didSet {
            fire()
        }
    }
    
    init(value: T) {
        self.value = value
    }
    
    func bind(handler: @escaping Handler) {
        handlers.append(handler)
    }
    
    func bindAndFire(handler: @escaping Handler) {
        bind(handler: handler)
        fire()
    }
    
    private func fire() {
        for handler in handlers {
            handler(value)
        }
    }
}
