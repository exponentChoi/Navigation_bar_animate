//
//  ThirdHeader.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2021/01/12.
//

import UIKit

class ThirdHeader: UICollectionReusableView {
    
    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "header")
//        iv.contentMode = .scaleAspectFill
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        backgroundColor = .red
    }
    
    private func setupUI() {
        imageView.image = UIImage(named: "header")
    }
}
