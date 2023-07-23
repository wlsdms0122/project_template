//
//  _TEMPLATE_SHORT_NAME_Error.swift
//  
//
//  Created by JSilver on 2022/02/01.
//

import Foundation

public typealias _TEMPLATE_SHORT_NAME_ErrorCode = Environment.Code._TEMPLATE_SHORT_NAME_Error

public extension Environment.Code {
    struct _TEMPLATE_SHORT_NAME_Error: Decodable, Equatable {
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


public extension Environment.Code._TEMPLATE_SHORT_NAME_Error {
    
}
