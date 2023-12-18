//
//  SavingsTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import UIKit

class SavingsTableViewCell: UITableViewCell {
    
    static let identifier = "SavingsTableViewCell"

    @IBOutlet weak var collectionView: UICollectionView!
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SavingsCollectionViewCell.nib(), forCellWithReuseIdentifier: SavingsCollectionViewCell.identifier)


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SavingsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        savingModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SavingsCollectionViewCell.identifier, for: indexPath) as! SavingsCollectionViewCell
        let item = savingModels[indexPath.row]
        cell.bind(title: item.name, money: item.money)
        return cell
    }
    
    
}

extension SavingsTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width/2-30, height: 100)
    }
}
