//
//  SecondView.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2020/12/29.
//

import UIKit

class SecondView: UIView {
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - View
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("hide navigation bar", for: .normal)
        button.setTitleColor(.systemPink, for: .normal)
//        button.backgroundColor = .systemPink
//        button.frame.size = button.sizeToFit()
        button.sizeToFit()
        return button
    }()
    
    // MARK: - Outlets
    
    // MARK: - Methods
    private func setupUI() {
        self.backgroundColor = .white
        self.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        button.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
