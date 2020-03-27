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
    
    /// Don't have reference to view, only have data binding
    var setNumberText: DataBinding<String>?
    
    /// Init presenter with model
    init(model: SimpleModel) {
        self.model = model
        self.setNumberText = DataBinding(value: String(describing: model.value))
    }
    
    /// Business logic
    func makeRandom() {
        model?.makeRandom()
        updateDataBinding()
    }
    
    /// Update view
    private func updateDataBinding() {
        guard let model = model else { return }
        
        setNumberText?.value = String(describing: model.value)
    }
}
