//
//  Range.swift
//
//
//  Created by jsilver on 2022/07/28.
//
import Foundation

@propertyWrapper
struct Range<T: Comparable> {
    // MARK: - Property
    var wrappedValue: T {
        didSet {
            wrappedValue = Swift.max(Swift.min(wrappedValue, max), min)
        }
    }
    
    private let min: T
    private let max: T
    
    // MARK: - Initializer
    init(wrappedValue: T, min: T, max: T) {
        self.wrappedValue = Swift.max(Swift.min(wrappedValue, max), min)
        self.min = min
        self.max = max
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
