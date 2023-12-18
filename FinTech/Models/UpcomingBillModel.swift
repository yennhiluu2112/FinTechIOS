//
//  UpcomingBillModel.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import Foundation

struct UpcomingBillModel{
    let name: String
    let time: String
    let icon: String
}

let upcomingBillModels: [UpcomingBillModel] = [
    UpcomingBillModel(name: "Market bills", time: "May 26, 2023", icon: "bag"),
    UpcomingBillModel(name: "Wifi bills", time: "May 26, 2023", icon: "wifi"),
    UpcomingBillModel(name: "Supermarket bills", time: "May 26, 2023", icon: "cart"),
]
