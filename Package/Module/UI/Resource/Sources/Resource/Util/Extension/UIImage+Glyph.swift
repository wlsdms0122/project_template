//
//  UIImage+Glyph.swift
//
//
//  Created by Ricoh on 2021/06/09.
//

import UIKit

extension UIImage {
    var glyph: UIImage {
        withRenderingMode(.alwaysTemplate)
    }
}
