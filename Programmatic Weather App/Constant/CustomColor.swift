//
//  CustomColor.swift
//  Programmatic Weather App
//
//  Created by GO on 2/23/23.
//

import UIKit

enum AppColor {
case primaryBlueColor
    
    
    
//    Get Color
    
    var color: UIColor {
        switch self {
        case .primaryBlueColor:
            return #colorLiteral(red: 0.2901960784, green: 0.5647058824, blue: 0.8862745098, alpha: 1)
        }
    }
}
