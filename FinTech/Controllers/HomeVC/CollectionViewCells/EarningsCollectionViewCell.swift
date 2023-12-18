//
//  EarningsCollectionViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 08/12/2023.
//

import UIKit

class EarningsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "EarningsCollectionViewCell"

    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var shortNameLabel: UILabel!
    
    func bind(title: String, money: String){
        nameLabel.text = title
        moneyLabel.text = "$\(money)"
        shortNameLabel.text = title.first?.description
    }
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup(){
        self.contentView.backgroundColor = .getColor(color: .pinkPastel)
        self.contentView.layer.cornerRadius = 20
        
    }

}
