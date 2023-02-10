//
//  UIColor+Hex.swift
//
//
//  Created by jsilver on 2022/07/28.
//
import UIKit

extension UIColor {
    convenience init(
        @Range(min: 0, max: 255) red: Int,
        @Range(min: 0, max: 255) green: Int,
        @Range(min: 0, max: 255) blue: Int,
        @Range(min: 0, max: 1) alpha: CGFloat = 1
    ) {
        print(red, green, blue)
        self.init(
            red: CGFloat(red) / 255,
            green: CGFloat(green) / 255,
            blue: CGFloat(blue) / 255,
            alpha: alpha
        )
    }
    
    convenience init(hex: Int, alpha: CGFloat = 1) {
        let rgb: [Int] = (0...2).map {
            (hex >> ($0 * 8)) & 0xFF
        }
        
        self.init(
            red: rgb[2],
            green: rgb[1],
            blue: rgb[0],
            alpha: alpha
        )
    }
}
