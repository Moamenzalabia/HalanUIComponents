//
//  HalanButton+Configure.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit
/// This is the extension used to configure HalanButton.
extension HalanButton {
    /**
     Configure Halan Button Style
     - Parameter buttonSize: Button size whether large = 1, medium = 2 , small = 3.
     - Parameter buttonTheme: Button theme whether primary = 1, secondary = 2 , tertiary = 3.
     - Parameter background: Button background whether blue = 1, danger = 2.
     - Parameter cornerRadius: Button corner radius
     - Parameter imageName: Button image name
     */
    public func configureButtonStyle(
        buttonSize: ButtonSize = .large,
        buttonTheme: ButtonTheme = .primary,
        buttonBackground: ButtonBackground = .blue,
        cornerRadius: CGFloat = 6.0,
        imageName: String = ""
    ) {
        size = buttonSize
        theme = buttonTheme
        background = buttonBackground
    }
    
    /**
     Configure Halan Button Animation
     - Parameter animatedScaleWhenHighlighted: Scaling animation when button is highlighted
     - Parameter animatedScaleDurationWhenHighlighted: Duration scaling animation when button is highlighted
     - Parameter animatedScaleWhenSelected: Scaling animation when button is Selected
     - Parameter animatedScaleDurationWhenSelected: Duration scaling animation when button is Selected
     */
    public func configureButtonAnimation(
        animatedScaleWhenHighlighted: CGFloat = 1.0,
        animatedScaleDurationWhenHighlighted: CGFloat = 0.2,
        animatedScaleWhenSelected: CGFloat = 1.0,
        animatedScaleDurationWhenSelected: CGFloat = 0.2
    ) {
        self.animatedScaleWhenHighlighted = animatedScaleWhenHighlighted
        self.animatedScaleDurationWhenHighlighted = animatedScaleDurationWhenHighlighted
        self.animatedScaleWhenSelected = animatedScaleWhenSelected
        self.animatedScaleDurationWhenSelected = animatedScaleDurationWhenSelected
    }
    
}
