//
//  NetworkManager.swift
//  Singleton
//
//  Created by LMinh on 8/8/18.
//  Copyright © 2018 LMinh. All rights reserved.
//

import Foundation

class NetworkManager
{
    // MARK: - Singleton
    static let sharedInstance = NetworkManager()
    
    // MARK: - Properties
    let baseURL: URL?
    
    // MARK: - Initialization
    private init() {
        self.baseURL = URL(string: "")
    }
}
