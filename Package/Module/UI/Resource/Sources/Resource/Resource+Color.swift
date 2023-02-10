//
//  Resource+Color.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit

public extension Resource {
    enum Color { }
}

public extension Resource.Color {
    static var white: UIColor { UIColor(named: "white", in: .module, compatibleWith: nil)! }
    static var black: UIColor { UIColor(named: "black", in: .module, compatibleWith: nil)! }
}
