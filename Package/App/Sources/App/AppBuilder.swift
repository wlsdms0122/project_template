//
//  AppBuilder.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB
import Root

public struct AppDependency: RootDependency {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public struct AppParameter {
    // MARK: - Property
    
    // MARK: - Initializer
    public init() { }
}

public protocol AppBuildable: Buildable {
    func build(with parameter: AppParameter) -> AppControllable
}

public final class AppBuilder: Builder<AppDependency>, AppBuildable {
    public func build(with parameter: AppParameter) -> AppControllable {
        let router = AppRouter(
            rootBuilder: RootBuilder(dependency)
        )
        let app = App(router: router)
        
        return app
    }
}
