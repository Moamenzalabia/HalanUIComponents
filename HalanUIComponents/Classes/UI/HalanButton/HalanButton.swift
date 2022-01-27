//
//  HalanButton.swift
//  HalanUIComponents
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import UIKit
/// Designable and inspectable UIButton that allows customisations of font, size, style and background. **HalanButton** contains three button styles which vary depending on the background.
@IBDesignable
public class HalanButton: UIButton {
    // MARK: - initializer
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    func commonInit() {
        layer.cornerRadius = 8
        layer.borderColor = UIColor.clear.cgColor
        layer.borderWidth = 0
        contentEdgeInsets = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        titleEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 0)
    }
    
    // MARK: - local properties
    /// This Halan Button Size.
    var size: ButtonSize = .large
    /// This Halan Button Theme .
    var theme: ButtonTheme = .primary
    /// This Halan Button Background.
    var background: ButtonBackground = .blue
    /// This Halan Button Background.
    var originalButtonText: String?
    /// Determines whether activityI ndicator isLoading or not
    public var isLoading: Bool = false
    
    //MARK: - Loading
    lazy var activityIndicator: UIActivityIndicatorView = {
        let activityIndicator = UIActivityIndicatorView(style: UIActivityIndicatorView.Style.medium)
        activityIndicator.hidesWhenStopped = true
        activityIndicator.isUserInteractionEnabled = false
        activityIndicator.color = titleColor(for: .normal)
        activityIndicator.center = CGPoint(x: self.bounds.size.width/2, y: self.bounds.size.height/2)
        return activityIndicator
    }()
    
    //MARK: - Animations
    @IBInspectable public var animatedScaleWhenHighlighted: CGFloat = 1.0
    @IBInspectable public var animatedScaleDurationWhenHighlighted: Double = 0.2
    @IBInspectable public var animatedScaleWhenSelected: CGFloat = 1.0
    @IBInspectable public var animatedScaleDurationWhenSelected: Double = 0.2
    
    // MARK: - inspectable(s)
    /// Halan Button Corner Radius
    @IBInspectable public var cornerRadius: CGFloat = 8 {
        didSet{
            layer.cornerRadius = cornerRadius
        }
    }
    
    /// Halan Button Image Name
    @IBInspectable public var imageName: String = "" {
        didSet {
            setImage(UIImage(named: imageName), for: state)
        }
    }
    
    /// Represent `ButtonSize` enum and it has 3 value from 1 to 3
    /// - 1 : large size
    /// - 2 : medium size
    /// - 3 : small size
    @IBInspectable public var buttonSize: Int {
        get {
            return size.rawValue
        }
        set {
            size = ButtonSize(rawValue: newValue) ?? .large
            editButtonSize()
        }
    }
    
    /// Represent `ButtonTheme` enum and it has 3 value from 1 to 3
    /// - 1 : primary style
    /// - 2 : secondary style
    /// - 3 : tertiary style
    @IBInspectable public var buttonTheme: Int {
        get {
            return theme.rawValue
        }
        set {
            theme = ButtonTheme(rawValue: newValue) ?? .primary
            editButtonStyle()
        }
    }
    
    /// Represent `ButtonBackground` enum and it has 2 value from 1 to 2
    /// - 1 : blue background
    /// - 2 : danger background
    @IBInspectable public var buttonBackground: Int {
        get {
            return background.rawValue
        }
        set {
            background = ButtonBackground(rawValue: newValue) ?? .blue
            editButtonStyle()
        }
    }
    
    // MARK: - private methods
    private func editButtonSize() {
        switch size {
            case .large:
                heightAnchor.constraint(equalToConstant: 50).isActive = true
                titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
            case .medium:
                heightAnchor.constraint(equalToConstant: 40).isActive = true
                titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .medium)
            case .small:
                heightAnchor.constraint(equalToConstant: 30).isActive = true
                titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        }
    }
    
    private func editButtonStyle() {
        switch background {
            case .blue:
                blueButtonColor()
            case .danger:
                dangerButtonColor()
        }
    }
    
    private func blueButtonColor() {
        switch theme {
            case .primary:
                updatePrimaryBlueBackgroundColor()
                updatePrimaryWhiteContentColor()
            case .secondary:
                updateSecondaryWhiteBackgroundColor()
                updateSecondaryBlueContentColor()
            case .tertiary:
                updateTertiaryBlueContentColor()
        }
    }
    
    private func dangerButtonColor() {
        switch theme {
            case .primary:
                updatePrimaryDangerBackgroundColor()
                updatePrimaryDangerContentColor()
            case .secondary:
                updateSecondaryWhiteBackgroundColor()
                updateSecondaryDangerContentColor()
            case .tertiary:
                updateTertiaryDangerContentColor()
        }
    }
}

