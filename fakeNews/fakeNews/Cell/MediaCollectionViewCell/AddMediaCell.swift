//
//  AddMediaCell.swift
//  fakeNews
//
//  Created by Gor Yeghoyan on 22.02.21.
//

import UIKit

class AddMediaCell: UICollectionViewCell {

    static let id = "AddMediaCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 8
        layer.borderWidth = 1
        layer.borderColor = UIColor.systemGray3.cgColor
        clipsToBounds = true
    }

}
