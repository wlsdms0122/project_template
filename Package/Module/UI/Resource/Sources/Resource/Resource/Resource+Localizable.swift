//
//  Resource+Localizable.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import Foundation

public extension Resource {
    enum Localizable { }
}

public extension Resource.Localizable {
    static var appName: String { "app_name".localized(in: .module) }
}
