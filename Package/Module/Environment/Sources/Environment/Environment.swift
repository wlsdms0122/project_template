//
//  Environment.swift
//  
//
//  Created by JSilver on 2022/02/01.
//

import Foundation

public typealias Env = Environment

public enum Environment { }

public extension Environment {
    enum Configuration {
        case develop
        case live
        case deploy
    }

    static var config: Configuration = .deploy
}
