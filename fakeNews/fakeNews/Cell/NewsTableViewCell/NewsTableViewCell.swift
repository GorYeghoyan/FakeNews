//
//  NewsCell.swift
//  fakeNews
//
//  Created by Gor Yeghoyan on 21.02.21.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var newsImage: UIImageView!
    
    @IBOutlet weak var newsDescriptionText: UILabel!
    
    
   
    
    
    var model: NewsModel? {
        didSet {
            header?.text = model?.header
            newsImage?.image = model?.image
            newsDescriptionText?.text = model?.newsDescriptionText
//            channelView = model?.view
//            channelName.text = model?.channelName
//            viewsCount.text = String(model!.viewsCount)
//            postingDate.text = dateToString()
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        header.layer.borderWidth = 1
        header.layer.borderColor = UIColor.systemGray3.cgColor
        header.clipsToBounds = true
        newsImage.layer.borderWidth = 1
        newsImage.layer.borderColor = UIColor.systemGray3.cgColor
        newsImage.clipsToBounds = true
        newsDescriptionText.layer.borderWidth = 1
        newsDescriptionText.layer.borderColor = UIColor.systemGray3.cgColor
        newsDescriptionText.clipsToBounds = true
        
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        model = nil
    }
   
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
