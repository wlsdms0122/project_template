//
//  Environment.swift
//  
//
//  Created by jsilver on 2022/02/01.
//

import Foundation

public typealias Env = Environment

public enum Environment { }

public extension Environment {
    static var config: Configuration = .deploy
}
