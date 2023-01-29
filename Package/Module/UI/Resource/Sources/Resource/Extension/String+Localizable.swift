//
//  String+Localizable.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import Foundation

extension String {
    var localized: String {
        NSLocalizedString(self, bundle: .module, comment: "")
    }
}
