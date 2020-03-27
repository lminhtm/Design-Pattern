//
//  ViewModel.swift
//  MVVM
//
//  Created by LMinh on 5/30/19.
//  Copyright © 2019 LMinh. All rights reserved.
//

import Foundation

var messierViewModel: [MessierViewModel] =
    [MessierViewModel(messier: Messier(formalName: "", commonName: "", pageLink: "", imageLink: "", description: "", thumbnail: "")),
     MessierViewModel(messier: Messier(formalName: "", commonName: "", pageLink: "", imageLink: "", description: "", thumbnail: "")),
     MessierViewModel(messier: Messier(formalName: "", commonName: "", pageLink: "", imageLink: "", description: "", thumbnail: ""))]

class MessierViewModel {
    private let messier: Messier
    
    init(messier: Messier) {
        self.messier = messier
    }
    
    public var formalName: String {
        return "Formal name: " + messier.formalName
    }
    
    public var commonName: String {
        return "Common name: " + messier.commonName
    }
    
    public var thumbnail: String {
        return messier.thumbnail
    }
}
