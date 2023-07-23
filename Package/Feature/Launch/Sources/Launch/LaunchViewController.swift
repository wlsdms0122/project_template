//
//  LaunchViewController.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import RVB

public protocol LaunchDelegate: AnyObject {
    func launch(_ launchController: LaunchControllable, didComplete state: LaunchState)
}

public protocol LaunchControllable: UIViewControllable, UINavigationControllerDelegate {
    var delegate: LaunchDelegate? { get set }
}

final class LaunchViewController: UIViewController, LaunchControllable {
    // MARK: - View
    private let root = LaunchView()

    // MARK: - Property
    private let router: any LaunchRoutable
    
    weak var delegate: LaunchDelegate?

    // MARK: - Initializer
    init(router: any LaunchRoutable) {
        self.router = router
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    override func loadView() {
        view = root
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Timer.scheduledTimer(
            withTimeInterval: 2,
            repeats: false
        ) { [weak self] _ in
            guard let self else { return }
            self.delegate?.launch(self, didComplete: .completed)
        }
    }

    // MARK: - Public

    // MARK: - Private
}

extension LaunchViewController {
    func navigationController(
        _ navigationController: UINavigationController,
        animationControllerFor operation: UINavigationController.Operation,
        from fromVC: UIViewController,
        to toVC: UIViewController
    ) -> UIViewControllerAnimatedTransitioning? {
        LaunchAnimator()
    }
}
