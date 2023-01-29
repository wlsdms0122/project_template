//
//  MainView.swift
//  
//
//  Created by JSilver on 2023/01/29.
//

import UIKit

final class MainView: UIView {
    // MARK: - View

    // MARK: - Property

    // MARK: - Initializer
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Lifecycle

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
        backgroundColor = .white
    }
    
    private func setUpAction() {
        
    }
}
