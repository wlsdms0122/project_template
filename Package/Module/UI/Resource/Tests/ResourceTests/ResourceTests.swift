//
//  ResourceTests.swift
//
//
//  Created by JSilver on 2023/01/28.
//

import XCTest
@testable import Resource

final class ResourceTests: XCTestCase {
    // MARK: - Property
    
    // MARK: - Lifecycle
    
    // MARK: - Tests
    func test_that_load_color_resource() throws {
        // Given
        
        // When
        _ = R.Color.white
        _ = R.Color.black
        
        // Then
    }
    
    func test_that_load_icon_resource() throws {
        // Given
        
        // When
        
        // Then
    }
    
    func test_that_load_image_resource() throws {
        // Given
        
        // When
        
        // Then
    }
    
    func test_that_load_localizable_resource() throws {
        // Given
        
        // When
        
        // Then
        XCTAssertFalse(R.Localizable.appName.isEmpty)
    }
}
