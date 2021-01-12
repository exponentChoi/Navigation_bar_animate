//
//  ThirdCell.swift
//  NavigationBar_animate
//
//  Created by 최지수 on 2021/01/12.
//

import UIKit

class ThirdCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        contentView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        
        contentView.backgroundColor = #colorLiteral(red: 1, green: 0.5354301333, blue: 0.5841813684, alpha: 1)
    }
    
    func setupUI(_ str: String) {
        titleLabel.text = str
    }

}
