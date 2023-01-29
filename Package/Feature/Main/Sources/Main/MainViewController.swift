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
    var router: MainRoutable?

    // MARK: - Initializer

    // MARK: - Lifecycle
    override func loadView() {
        view = root
    }

    // MARK: - Public

    // MARK: - Private
}
