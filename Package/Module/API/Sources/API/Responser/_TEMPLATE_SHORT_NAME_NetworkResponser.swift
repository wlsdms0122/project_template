//
//  _TEMPLATE_SHORT_NAME_Responser.swift
//
//
//  Created by JSilver on 2022/07/18.
//

import Foundation
import Dyson

public struct _TEMPLATE_SHORT_NAME_Responser: Responser {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
    
    // MARK: - Lifecycle
    public func response<S: Spec>(
        _ response: Result<(Data, URLResponse), any Error>,
        spec: S
    ) throws -> S.Result {
        switch response {
        case let .success((data, response)):
            guard let response = response as? HTTPURLResponse else {
                throw _TEMPLATE_SHORT_NAME_NetworkError.emptyResponse
            }
            
            guard (200..<300).contains(response.statusCode) else {
                throw _TEMPLATE_SHORT_NAME_NetworkError.invalidStatusCode(response.statusCode)
            }
            
            let error = try? spec.error.map(data)
            if let error {
                throw error
            }
            
            return try spec.result.map(data)
            
        case let .failure(error):
            throw error
        }
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
