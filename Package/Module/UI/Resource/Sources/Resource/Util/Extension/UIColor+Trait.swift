//
//  UIColor+Trait.swift
//
//
//  Created by JSilver on 2023/03/05.
//

import UIKit

public extension UIColor {
    static func traitColor(_ light: UIColor, dark: UIColor? = nil) -> UIColor {
        .init { collection in
            switch collection.userInterfaceStyle {
            case .dark:
                return dark ?? light
                
            default:
                return light
            }
        }
    }
}
