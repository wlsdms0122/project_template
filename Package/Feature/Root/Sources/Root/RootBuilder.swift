//
//  RootBuilder.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB
import Launch
import Main

public struct RootDependency {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

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
        let launchBuilder = LaunchBuilder(.init())
        let mainBuilder = MainBuilder(.init())
        
        let viewController = RootViewController()
        let router = RootRouter(
            launchBuilder: launchBuilder,
            mainBuilder: mainBuilder
        )
        
        viewController.router = router
        
        return viewController
    }
}
