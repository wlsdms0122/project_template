//
//  RootRouter.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import RVB
import Launch
import Main

protocol RootRoutable: Routable {
    /// Build `launch` module for routing.
    func routeToLaunch(with parameter: LaunchParameter) -> LaunchControllable
    /// Build `main` module for routing.
    func routeToMain(with parameter: MainParameter) -> MainControllable
}

final class RootRouter: RootRoutable {
    // MARK: - Property
    private let launchBuilder: LaunchBuildable
    private let mainBuilder: MainBuildable
    
    // MARK: - Initializer
    init(
        launchBuilder: LaunchBuildable,
        mainBuilder: MainBuildable
    ) {
        self.launchBuilder = launchBuilder
        self.mainBuilder = mainBuilder
    }
    
    // MARK: - Public
    func routeToLaunch(with parameter: LaunchParameter) -> LaunchControllable {
        launchBuilder.build(with: parameter)
    }
    
    func routeToMain(with parameter: MainParameter) -> MainControllable {
        mainBuilder.build(with: parameter)
    }
    
    // MARK: - Private
}
