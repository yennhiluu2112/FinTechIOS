//
//  HeaderTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 08/12/2023.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    static let identifier = "HeaderTableViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bind(title: String){
        titleLabel.text = title
    }
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
