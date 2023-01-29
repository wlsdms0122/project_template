//
//  App.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import RVB

public protocol AppControllable: AnyObject, Controllable {
    var window: UIWindow? { get }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions)
}

final class App: AppControllable {
    // MARK: - Property
    var window: UIWindow?
    
    var router: any AppRoutable
    
    // MARK: - Initializer
    init(router: any AppRoutable) {
        self.router = router
    }
    
    // MARK: - Lifecycle
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        return true
    }
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let root = router.routeToRoot(with: .init())
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = root
        window.makeKeyAndVisible()
        
        self.window = window
    }
    
    // MARK: - Public
    
    // MARK: - Private
}
