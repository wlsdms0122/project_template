//
//  Resource+Color.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit

extension Resource {
    public enum Color {
        public static var white: UIColor { UIColor(named: "white", in: .module, compatibleWith: nil)! }
        public static var black: UIColor { UIColor(named: "black", in: .module, compatibleWith: nil)! }
    }
}
