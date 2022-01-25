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
        setTitleColor(.WhiteButtonContent, for: .normal)
    }
    
    // MARK: Primary Danger
    func updatePrimaryDangerBackgroundColor() {
        backgroundColor = .DangerBackground
    }
    
    func updatePrimaryDangerContentColor() {
        setTitleColor(.DangerButtonContent, for: .normal)
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
        setTitleColor(.DangerButtonContent, for: .normal)
    }
    
    // MARK: - Tertiary Blue
    func updateTertiaryBlueContentColor() {
        layer.borderWidth = 1
        backgroundColor = .NegativeBackground
        layer.borderColor = UIColor.BlueBorder.cgColor
        setTitleColor(.BlueButtonContent, for: .normal)
    }
    
    // MARK: - Tertiary Danger
    func updateTertiaryDangerTextColor() {
        layer.borderWidth = 1
        backgroundColor = .NegativeBackground
        layer.borderColor = UIColor.DangerBorder.cgColor
        setTitleColor(.DangerButtonContent, for: .normal)
    }
}

