//
//  Range.swift
//
//
//  Created by JSilver on 2022/07/28.
//

import Foundation

@propertyWrapper
public struct Range<T: Comparable> {
    // MARK: - Property
    public var wrappedValue: T {
        didSet {
            wrappedValue = clamping(wrappedValue)
        }
    }
    
    private let clamping: (T) -> T
    
    // MARK: - Initializer
    public init(wrappedValue: T, _ range: Swift.Range<T>) {
        let clamping: (T) -> T = { value in
            max(min(value, range.upperBound), range.lowerBound)
        }
        
        self.wrappedValue = clamping(wrappedValue)
        self.clamping = clamping
    }
    
    public init(wrappedValue: T, _ range: Swift.ClosedRange<T>) {
        let clamping: (T) -> T = { value in
            max(min(value, range.upperBound), range.lowerBound)
        }
        
        self.wrappedValue = clamping(wrappedValue)
        self.clamping = clamping
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
