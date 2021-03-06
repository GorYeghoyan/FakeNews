//
//  AddNewsVC.swift
//  fakeNews
//
//  Created by Gor Yeghoyan on 21.02.21.
//

import UIKit

class AddNewsVC: UIViewController {
    
    @IBOutlet weak var mediaCollectionView: UICollectionView!
    @IBOutlet weak var headreTextField: UITextField!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    @IBOutlet weak var publishButtun: UIButton!
    
    @IBOutlet weak var cancelButton: UIButton!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mediaCollectionView.register(UINib(nibName: AddMediaCell.id, bundle: nil),
                                     forCellWithReuseIdentifier: AddMediaCell.id)
        mediaCollectionView.register(UINib(nibName: MediaCell.id, bundle: nil),
                                     forCellWithReuseIdentifier: MediaCell.id)
        mediaCollectionView.dataSource = self
        mediaCollectionView.delegate = self
        descriptionTextView.layer.borderWidth = 1
        descriptionTextView.layer.borderColor = UIColor.systemGray3.cgColor
        publishButtun.buttonShape()
        cancelButton.buttonShape()
    }
    
    
    @IBAction func publish(_ sender: UIButton) {
        
    }
    @IBAction func cancel(_ sender: UIButton) {
        
    }
    
    
}

extension AddNewsVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.row == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AddMediaCell.id, for: indexPath)
            return cell
        } else {
            let index = indexPath.row - 1
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MediaCell.id, for: indexPath) as! MediaCell
            return cell
        }
    }
}

extension AddNewsVC: UICollectionViewDelegate {
    
}

extension UIButton {
    func buttonShape() {
        layer.cornerRadius = 8
    }
}
