//
//  Environment+Key.swift
//  
//
//  Created by JSilver on 2023/02/16.
//

import Foundation

public typealias StoreKey = Environment.Key.Store

public extension Environment {
    enum Key { }
}

public extension Environment.Key {
    struct Store: Decodable, Equatable {
        // MARK: - Property
        public let rawValue: String
        public let description: String?
        
        // MARK: - Initializer
        public init(_ rawValue: String, description: String? = nil) {
            self.rawValue = rawValue
            self.description = description
        }
        
        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            
            let code = try container.decode(String.self)
            
            self.init(code)
        }
        
        // MARK: - Public
        public static func == (lhs: Self, rhs: Self) -> Bool {
            lhs.rawValue == rhs.rawValue
        }
        
        // MARK: - Private
    }
}

public extension Environment.Key.Store {
    
}
