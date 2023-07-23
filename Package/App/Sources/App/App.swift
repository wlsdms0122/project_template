//
//  App.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import RVB
import Logma
import Environment

public protocol AppControllable: AnyObject, Controllable {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) -> UIWindow?
}

final class App: AppControllable {
    // MARK: - Property
    private var router: any AppRoutable
    
    // MARK: - Initializer
    init(router: any AppRoutable) {
        self.router = router
    }
    
    // MARK: - Lifecycle
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setUpApplication()
        
        return true
    }
    
    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) -> UIWindow? {
        guard let windowScene = (scene as? UIWindowScene) else { return nil }
        
        let root = router.routeToRoot(with: .init())
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = root
        window.makeKeyAndVisible()
        
        return window
    }
    
    // MARK: - Public
    
    // MARK: - Private
    private func setUpApplication() {
        setUpLogma()
    }
    
    private func setUpLogma() {
        guard Env.config != .deploy else { return }
        Logma.configure([ConsolePrinter()])
    }
}
