//
//  SavingModel.swift
//  FinTech
//
//  Created by nhi.luu on 11/12/2023.
//

import Foundation

struct SavingModel{
    let name: String
    let money: String
    let progress: Int
}

let savingModels: [SavingModel] = [
    SavingModel(name: "Iphone 13 Mini", money: "699", progress: 50),
    SavingModel(name: "Macbook Pro M1", money: "1,499", progress: 70),
    SavingModel(name: "Car", money: "20,000", progress: 60),
]
