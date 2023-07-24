//
//  MainViewController.swift
//  
//
//  Created by JSilver on 2023/01/29.
//

import UIKit
import RVB

public protocol MainControllable: UIViewControllable {
    
}

final class MainViewController: UIViewController, MainControllable {
    // MARK: - View
    private let root = MainView()

    // MARK: - Property
    private let router: any MainRoutable

    // MARK: - Initializer
    init(router: any MainRoutable) {
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

    // MARK: - Public

    // MARK: - Private
}
