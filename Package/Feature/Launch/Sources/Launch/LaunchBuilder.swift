//
//  LaunchBuilder.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB

public struct LaunchDependency {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

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
        let viewController = LaunchViewController()
        let router = LaunchRouter()
        
        // DI
        viewController.router = router
        
        return viewController
    }
}
