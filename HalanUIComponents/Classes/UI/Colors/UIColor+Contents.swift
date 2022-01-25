//
//  UIColor+Contents.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit

extension UIColor {
    /// Universal color (Hex) #FFFFFF
    public static var WhiteButtonContent: UIColor {
        UIColor(named: "WhiteButtonContent") ?? black
    }
    
    /// Universal color (Hex) #007AFF
    public static var BlueButtonContent: UIColor {
        UIColor(named: "BlueButtonContent") ?? black
    }
    
    /// Universal color (Hex) #EB5757
    public static var DangerButtonContent: UIColor {
        UIColor(named: "DangerButtonContent") ?? black
    }
}
