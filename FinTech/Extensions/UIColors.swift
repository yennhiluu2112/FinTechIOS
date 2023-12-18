//
//  UIColors.swift
//  FinTech
//
//  Created by nhi.luu on 08/12/2023.
//

import Foundation
import UIKit

enum Colors {
    case pinkPastel
}


extension UIColor{
   class func getColor(color: Colors) -> UIColor {
        switch color {
        case .pinkPastel:
            return UIColor(red: 238/255, green: 215/255, blue: 211/255, alpha: 1)
        }
    }
}
