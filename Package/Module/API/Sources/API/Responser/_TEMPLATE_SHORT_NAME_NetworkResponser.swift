//
//  _TEMPLATE_SHORT_NAME_NetworkResponser.swift
//  
//
//  Created by jsilver on 2022/01/31.
//

import Foundation
import Network

public final class _TEMPLATE_SHORT_NAME_NetworkResponser: NetworkResponser {
    // MARK: - Property
    public let provider: any NetworkProvider
    
    // MARK: - Initializer
    public init(provider: any NetworkProvider) {
        self.provider = provider
    }
    
    // MARK: - Lifecycle
    public func response<T: Target>(
        target: T,
        result: Response,
        handler: (Result<T.Result, Error>) -> Void
    ) {
        switch result {
        case let .success((data, response)):
            guard let response = response as? HTTPURLResponse else {
                handler(.failure(_TEMPLATE_SHORT_NAME_NetworkError.emptyResponse))
                return
            }
            
            guard (200..<300).contains(response.statusCode) else {
                handler(.failure(_TEMPLATE_SHORT_NAME_NetworkError.invalidStatusCode(response.statusCode)))
                return
            }
            
            do {
                let error = try target.error.map(data)
                handler(.failure(error))
                
            } catch {
                do {
                    let result = try target.result.map(data)
                    handler(.success(result))
                } catch {
                    handler(.failure(error))
                }
            }
            
        case let .failure(error):
            handler(.failure(error))
        }
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
