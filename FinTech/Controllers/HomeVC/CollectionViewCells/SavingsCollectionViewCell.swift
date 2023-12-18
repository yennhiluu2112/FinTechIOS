//
//  SavingsCollectionViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import UIKit

class SavingsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SavingsCollectionViewCell"

    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var nextBtn: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    func setup(){
        self.layer.cornerRadius = 10

    }
    
    func bind(title: String, money: String){
        nameLabel.text = title
        moneyLabel.text = "$\(money)"
    }
    
}
