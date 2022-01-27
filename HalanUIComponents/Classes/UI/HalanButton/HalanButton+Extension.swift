//
//  HalanButton+Extension.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit

extension HalanButton {
    // MARK: Primary Blue
    func updatePrimaryBlueBackgroundColor() {
        backgroundColor = .BlueBackground
    }
    
    func updatePrimaryWhiteContentColor() {
        tintColor = .WhiteButtonContent
    }
    
    // MARK: Primary Danger
    func updatePrimaryDangerBackgroundColor() {
        backgroundColor = .DangerBackground
    }
    
    func updatePrimaryDangerContentColor() {
        tintColor = .DangerButtonContent
    }
    
    // MARK: - Secondary Blue
    func updateSecondaryWhiteBackgroundColor() {
        backgroundColor = .NegativeBackground
    }
    
    func updateSecondaryBlueContentColor() {
        setTitleColor(.BlueButtonContent, for: .normal)
    }
    
    // MARK: - Secondary Danger
    func updateSecondaryDangerContentColor() {
        tintColor = .DangerButtonContent
    }
    
    // MARK: - Tertiary Blue
    func updateTertiaryBlueContentColor() {
        layer.borderWidth = 1
        backgroundColor = .NegativeBackground
        layer.borderColor = UIColor.BlueBorder.cgColor
        tintColor = .BlueButtonContent
        layoutSubviews()
    }
    
    // MARK: - Tertiary Danger
    func updateTertiaryDangerContentColor() {
        layer.borderWidth = 1
        backgroundColor = .NegativeBackground
        layer.borderColor = UIColor.DangerBorder.cgColor
        tintColor = .DangerButtonContent
    }
}

