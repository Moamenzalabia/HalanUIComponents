//
//  UIColor+Backgrounds.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit

extension UIColor {
    /// Universal color (Hex) #007AFF
    public static var BlueBackground: UIColor {
        UIColor(named: "BlueBackground") ?? black
    }
    
    /// Universal color (Hex) #FFF5F5
    public static var DangerBackground: UIColor {
        UIColor(named: "DangerBackground") ?? black
    }
    
    /// Universal color (Hex) #FFFFFF
    public static var NegativeBackground: UIColor {
        UIColor(named: "NegativeBackground") ?? black
    }
}
