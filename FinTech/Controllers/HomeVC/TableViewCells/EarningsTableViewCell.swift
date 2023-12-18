//
//  EarningsTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 08/12/2023.
//

import UIKit

class EarningsTableViewCell: UITableViewCell {
    
    static let identifier = "EarningsTableViewCell"
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(EarningsCollectionViewCell.nib(), forCellWithReuseIdentifier: EarningsCollectionViewCell.identifier)
        let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        layout?.scrollDirection = .horizontal

    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension EarningsTableViewCell: UICollectionViewDataSource, UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        earningModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EarningsCollectionViewCell.identifier, for: indexPath) as! EarningsCollectionViewCell
        let item = earningModels[indexPath.row]
        cell.bind(title: item.name, money: item.money)
        return cell
    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 100, height: 150)
//    }
}
