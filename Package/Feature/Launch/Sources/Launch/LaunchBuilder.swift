//
//  LaunchBuilder.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB

public protocol LaunchDependency { }

public struct LaunchParameter {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public protocol LaunchBuildable: Buildable {
    func build(with parameter: LaunchParameter) -> LaunchControllable
}

public final class LaunchBuilder: Builder<LaunchDependency>, LaunchBuildable {
    public func build(with parameter: LaunchParameter) -> LaunchControllable {
        let router = LaunchRouter()
        let viewController = LaunchViewController(
            router: router
        )
        
        return viewController
    }
}
