//
//  SimpleViewModel.swift
//  MVVM
//
//  Created by LMinh on 3/27/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import Foundation

class SimpleViewModel {
    
    /// Model reference here
    private var model: SimpleModel?
    
    /// Don't have reference to view
    let numberText: DataBinding<String>
    
    /// Init view model
    init(model: SimpleModel) {
        self.model = model
        self.numberText = DataBinding(String(describing: model.value))
    }
    
    /// Business logic
    func makeRandom() {
        guard var model = model else { return }
        
        model.makeRandom()
        numberText.value = String(describing: model.value)
    }
}
