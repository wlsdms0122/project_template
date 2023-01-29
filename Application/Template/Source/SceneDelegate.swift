//
//  SceneDelegate.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import App

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    // MARK: - Property
    private var window: UIWindow? { app?.window }
    
    private var app: AppControllable?
    
    // MARK: - Lifecycle
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        let app = AppBuilder(.init())
            .build(with: .init())
        self.app = app
        
        app.scene(scene, willConnectTo: session, options: connectionOptions)        
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
