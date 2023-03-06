//
//  Store.swift
//
//
//  Created by jsilver on 2022/02/06.
//

import Foundation
import Storage
import Environment

@propertyWrapper
public struct Store<Value: Codable> {
    private let storage: any Storage
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
    
    public init(_ storage: any Storage, for key: StoreKey) {
        self.storage = storage
        self.key = key
    }
}
