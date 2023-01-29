//
//  MainBuilder.swift
//  
//
//  Created by JSilver on 2023/01/29.
//

import RVB

public struct MainDependency {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public struct MainParameter {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public protocol MainBuildable: Buildable {
    func build(with parameter: MainParameter) -> MainControllable
}

public final class MainBuilder: Builder<MainDependency>, MainBuildable {
    public func build(with parameter: MainParameter) -> MainControllable {
        let viewController = MainViewController()
        let router = MainRouter()
        
        // DI
        viewController.router = router
        
        return viewController
    }
}
