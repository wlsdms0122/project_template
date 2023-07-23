//
//  NSObject+Name.swift
//
//
//  Created by JSilver on 2023/07/18.
//

import Foundation

public extension NSObject {
    static var name: String { String(describing: self) }
}
