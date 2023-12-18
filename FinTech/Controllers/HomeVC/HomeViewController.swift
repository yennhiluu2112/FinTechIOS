//
//  HomeViewController.swift
//  FinTech
//
//  Created by nhi.luu on 12/12/2023.
//

import UIKit

enum CellType{
    case OverviewCell
    case HeaderCell(title: String)
    case EarningsCell
    case SavingsCell
    case UpcomingBillsCell
}

class HomeViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    let cells : [CellType] = [
        .OverviewCell,
        .HeaderCell(title: "Earnings"),
        .EarningsCell,
        .HeaderCell(title: "Savings"),
        .SavingsCell,
        .HeaderCell(title: "Upcoming bills"),
        .UpcomingBillsCell
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemGray6
        setUpTableView()
        setUpNavBar()
       

    }
    
    @objc func tap() {
            print("tapped")
    }
    
    func setUpTableView(){
        tableView.register(HeaderTableViewCell.nib(), forCellReuseIdentifier: HeaderTableViewCell.identifier)
        tableView.register(EarningsTableViewCell.nib(), forCellReuseIdentifier: EarningsTableViewCell.identifier)
        tableView.register(SavingsTableViewCell.nib(), forCellReuseIdentifier: SavingsTableViewCell.identifier)
        tableView.register(UpcomingBillsTableViewCell.nib(), forCellReuseIdentifier: UpcomingBillsTableViewCell.identifier)
        tableView.register(OverviewTableViewCell.nib(), forCellReuseIdentifier: OverviewTableViewCell.identifier)

        tableView.dataSource = self
        tableView.delegate = self
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant:  16),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -16),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16)
        ])
    }
    
    func setUpNavBar(){
        title = "Home"
        
        let leftButton = UIBarButtonItem(title: "Left", style: .plain, target: self, action: #selector(tap))
        navigationItem.leftBarButtonItem = leftButton
        
        let searchItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(tap))
        let bookMarkItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(tap))
                            
        navigationItem.rightBarButtonItems = [searchItem, bookMarkItem]
        
        self.navigationController?.navigationBar.backgroundColor = .cyan

    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch cells[indexPath.row]{
        case.EarningsCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: EarningsTableViewCell.identifier, for: indexPath) as! EarningsTableViewCell
            return cell
        case .HeaderCell(title: let title):
            let cell = tableView.dequeueReusableCell(withIdentifier: HeaderTableViewCell.identifier, for: indexPath) as! HeaderTableViewCell
            cell.bind(title: title);
            return cell
        case .SavingsCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SavingsTableViewCell.identifier, for: indexPath) as! SavingsTableViewCell
            return cell
        case .UpcomingBillsCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingBillsTableViewCell.identifier, for: indexPath) as! UpcomingBillsTableViewCell
            return cell
        case .OverviewCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: OverviewTableViewCell.identifier, for: indexPath) as! OverviewTableViewCell
            return cell
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch cells[indexPath.row]{
        case.EarningsCell:
            return 220
        case .HeaderCell(_):
            return UITableView.automaticDimension
        case .SavingsCell:
           return 220
        case .UpcomingBillsCell:
            return 500
        case .OverviewCell:
            return 80
        }
    }
    
    
}

