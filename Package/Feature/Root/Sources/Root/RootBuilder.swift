//
//  RootBuilder.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB
import Launch
import Main

public protocol RootDependency: LaunchDependency, MainDependency { }

public struct RootParameter {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public protocol RootBuildable: Buildable {
    func build(with parameter: RootParameter) -> RootControllable
}

public final class RootBuilder: Builder<RootDependency>, RootBuildable {
    public func build(with parameter: RootParameter) -> RootControllable {
        let router = RootRouter(
            launchBuilder: LaunchBuilder(dependency),
            mainBuilder: MainBuilder(dependency)
        )
        let viewController = RootViewController(
            router: router
        )
        
        return viewController
    }
}
