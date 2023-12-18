//
//  UpcomingBillsItemTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import UIKit

class UpcomingBillsItemTableViewCell: UITableViewCell {
    
    static let identifier = "UpcomingBillsItemTableViewCell"
    
    @IBOutlet weak var payBtn: UIButton!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var imageContainerView: UIView!
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setup(){
        payBtn.layer.cornerRadius = 10
        payBtn.layer.borderWidth = 1
        payBtn.layer.borderColor = UIColor.blue.cgColor
        imageContainerView.layer.cornerRadius = 10
    }
    
    func bind(title: String, time: String, icon: String){
        nameLabel.text = title
        timeLabel.text = time
        iconImageView.image = UIImage(systemName: icon)
    }
}


    

