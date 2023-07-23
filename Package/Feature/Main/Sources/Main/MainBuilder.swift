//
//  MainBuilder.swift
//  
//
//  Created by JSilver on 2023/01/29.
//

import RVB

public protocol MainDependency { }

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
        let router = MainRouter()
        let viewController = MainViewController(
            router: router
        )
        
        return viewController
    }
}
