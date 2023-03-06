//
//  SecureStore.swift
//
//
//  Created by JSilver on 2023/02/16.
//

import Foundation
import Storage
import Environment

@propertyWrapper
public struct SecureStore<Value: Codable> {
    private let storage: any SecureStorage
    private let key: StoreKey
    
    public var wrappedValue: Value? {
        get {
            try? storage.read(forKey: key.rawValue)
        }
        set {
            guard let newValue else {
                try? storage.delete(forKey: key.rawValue)
                return
            }
            
            guard let _ = try? storage.read(forKey: key.rawValue) else {
                try? storage.create(newValue, forKey: key.rawValue)
                return
            }
            
            try? storage.update(newValue, forKey: key.rawValue)
        }
    }
    
    public init(_ storage: any SecureStorage, for key: StoreKey) {
        self.storage = storage
        self.key = key
    }
}
