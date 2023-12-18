//
//  OverviewTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import UIKit

class OverviewTableViewCell: UITableViewCell {
    
    static let identifier = "OverviewTableViewCell"

    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
