//
//  UpcomingBillsTableViewCell.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import UIKit

class UpcomingBillsTableViewCell: UITableViewCell {
    
    static let identifier = "UpcomingBillsTableViewCell"
    @IBOutlet weak var tableView: UITableView!
    
    static func nib() -> UINib{
        return UINib(nibName: identifier, bundle: .main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UpcomingBillsItemTableViewCell.nib(), forCellReuseIdentifier: UpcomingBillsItemTableViewCell.identifier)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension UpcomingBillsTableViewCell: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return upcomingBillModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingBillsItemTableViewCell.identifier, for: indexPath) as! UpcomingBillsItemTableViewCell
        let item = upcomingBillModels[indexPath.row]
        cell.bind(title: item.name, time: item.time, icon: item.icon)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    
}
