//
//  Environment+URL.swift
//  
//
//  Created by jsilver on 2022/02/02.
//

import Foundation

public extension Environment {
    enum URL { }
}

public extension Environment.URL {
    static var baseURL: String {
        switch Env.config {
        case .develop:
            return ""
            
        case .live,
            .deploy:
            return ""
        }
    }
}
