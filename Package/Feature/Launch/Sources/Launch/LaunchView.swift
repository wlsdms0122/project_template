//
//  LaunchView.swift
//  
//
//  Created by JSilver on 2023/01/28.
//

import UIKit
import Resource

final class LaunchView: UIView {
    // MARK: - View
    private let titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Launch"
        
        return view
    }()

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
        [
            titleLabel
        ]
            .forEach {
                $0.translatesAutoresizingMaskIntoConstraints = false
                addSubview($0)
            }
        
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setUpState() {
        backgroundColor = R.Color.white
    }
    
    private func setUpAction() {
        
    }
}
