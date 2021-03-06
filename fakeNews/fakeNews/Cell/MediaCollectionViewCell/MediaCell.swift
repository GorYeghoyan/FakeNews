//
//  MediaCell.swift
//  fakeNews
//
//  Created by Gor Yeghoyan on 22.02.21.
//

import UIKit

class MediaCell: UICollectionViewCell {

    static let id = "MediaCell"
    
    var deleteClosure: (()-> Void)?
 
    @IBOutlet weak var imageView: UIImageView!    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    @IBAction func deleteActon(_ sender: Any) {
        deleteClosure?()
    }
    
    @IBAction func editAction(_ sender: Any) {
        
    }
    
}
