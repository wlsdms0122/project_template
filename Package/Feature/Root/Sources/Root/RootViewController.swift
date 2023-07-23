//
//  RootViewController.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import RVB
import Route
import Launch
import Main

public protocol RootControllable: UIViewControllable {
    
}

final class RootViewController: UINavigationController, RootControllable {
    // MARK: - View

    // MARK: - Property
    private let router: any RootRoutable
    
    // MARK: - Initializer
    init(router: any RootRoutable) {
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUp()
    }
    
    // MARK: - Public
    
    // MARK: - Private
    private func setUp() {
        setUpLayout()
        setUpState()
        setUpAction()
    }
    
    private func setUpLayout() {
        
    }
    
    private func setUpState() {
        // Hide top navigtaion bar
        isNavigationBarHidden = true
        
        // Route to launch.
        presentLaunch(animated: false)
    }
    
    private func setUpAction() {
        
    }
    
    /// Present `Launch` module.
    func presentLaunch(
        animated: Bool,
        force: Bool = true,
        completion: ((LaunchControllable) -> Void)? = nil
    ) {
        let launch = router.routeToLaunch(with: .init())
        
        launch.delegate = self
        
        delegate = launch
        
        route(to: self, animated: true) {
            $0?.setViewControllers(
                [launch],
                animated: animated
            )
        }
    }
    
    /// Present `Main` module.
    func presentMain(
        animated: Bool,
        force: Bool = true,
        completion: ((MainControllable) -> Void)? = nil
    ) {
        let main = router.routeToMain(with: .init())
        
        route(to: self, animated: true) {
            $0?.setViewControllers(
                [main],
                animated: animated
            )
        }
    }
}

extension RootViewController: LaunchDelegate {
    func launch(_ launchController: LaunchControllable, didComplete state: LaunchState) {
        presentMain(animated: true)
    }
}
