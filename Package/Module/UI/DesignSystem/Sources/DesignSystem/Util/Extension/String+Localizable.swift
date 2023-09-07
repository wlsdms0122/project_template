//
//  String+Localized.swift
//
//
//  Created by JSilver on 2021/05/29.
//

import Foundation

public extension String {
    func localized(in bundle: Bundle? = nil) -> String {
        NSLocalizedString(self, bundle: bundle ?? .main, value: "unknown", comment: "")
    }
}
