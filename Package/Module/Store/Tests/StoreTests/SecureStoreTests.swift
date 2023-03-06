//
//  SecureStoreTests.swift
//  
//
//  Created by JSilver on 2023/02/16.
//

import XCTest
@testable import Store
import Storage

final class SecureStoreTests: XCTestCase {
    // MARK: - Property
    private var storage: (any SecureStorage)!
    
    // MARK: - Lifecycle
    override func setUp() {
        storage = MemorySecureStorage()
    }
    
    override func tearDown() {
        
    }
    
    // MARK: - Test
    func test_that_storage_save_the_value_after_value_is_assigned_via_store() {
        // Given
        @SecureStore(storage, for: .init("tiny"))
        var value: String?
        
        // When
        XCTAssertNil(try? storage.read(forKey: "tiny"))
        
        value = "habit"
        
        // Then
        XCTAssertEqual(try? storage.read(forKey: "tiny"), "habit")
    }
    
    func test_that_store_value_equal_with_storage_value() {
        // Given
        @SecureStore(storage, for: .init("tiny"))
        var value: String?
        
        // When
        try? storage.create("habit", forKey: "tiny")
        
        // Then
        XCTAssertEqual(value, "habit")
    }
    
    func test_that_storage_value_is_changed_when_assign_new_value() {
        // Given
        @SecureStore(storage, for: .init("tiny"))
        var value: String?
        
        value = "habit"
        
        // When
        XCTAssertNotNil(try? storage.read(forKey: "tiny"))
        
        value = "habit2"
        
        // Then
        XCTAssertEqual(try? storage.read(forKey: "tiny"), "habit2")
    }
    
    func test_that_stroage_value_is_removed_when_assign_nil() {
        // Given
        @SecureStore(storage, for: .init("tiny"))
        var value: String?
        
        value = "habit"
        
        // When
        XCTAssertNotNil(try? storage.read(forKey: "tiny"))
        
        value = nil
        
        // Then
        XCTAssertNil(try? storage.read(forKey: "tiny"))
    }
}
