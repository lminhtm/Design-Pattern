//
//  SimplePresenter.swift
//  MVP
//
//  Created by LMinh on 3/27/20.
//  Copyright © 2020 LMinh. All rights reserved.
//

import Foundation

class SimplePresenter {
    
    /// Model reference here
    private var model: SimpleModel?
    
    /// View abtract reference here
    private weak var view: SimpleView?
    
    /// Init presenter with model
    init(model: SimpleModel) {
        self.model = model
    }
    
    /// Attach view to this presenter
    func attachView(view: SimpleView) {
        self.view = view
        updateView()
    }
    
    /// Business logic
    func makeRandom() {
        model?.makeRandom()
        updateView()
    }
    
    /// Update view
    private func updateView() {
        guard let model = model, let view = view else { return }
        
        view.setNumberText(text: String(describing: model.value))
    }
}
