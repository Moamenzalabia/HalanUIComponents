//
//  HalanButtonTests.swift
//  HalanUIComponentsTests
//
//  Created by Moamen Abd Elgawad on 25/01/2022.
//

import XCTest
@testable import HalanUIComponents

class HalanButtonTests: XCTestCase {
    
    var button: HalanButton!
    
    override func setUp() {
        super.setUp()
        button = HalanButton()
    }
    
    override func tearDown() {
        button = nil
        super.tearDown()
    }
    
    func testCommonInit() {
        button.commonInit()
        XCTAssertEqual(button.layer.cornerRadius, 8)
        XCTAssertEqual(button.layer.borderWidth, 0)
        XCTAssertEqual(button.layer.borderColor, UIColor.clear.cgColor)
    }
    
    func testHalanButtonThemes() {
        
        button.configureButtonStyle(buttonSize: .large, buttonTheme: .primary, buttonBackground: .blue, cornerRadius: 10, imageName: "")
        
        XCTAssertEqual(button.buttonTheme, 1)
        XCTAssertEqual(button.buttonSize, 1)
        XCTAssertEqual(button.buttonBackground, 1)
        XCTAssertEqual(button.layer.cornerRadius, 10)
        
        button.configureButtonStyle(buttonSize: .large, buttonTheme: .secondary, buttonBackground: .blue, cornerRadius: 10, imageName: "")
        XCTAssertEqual(button.buttonTheme, 2)
        
        button.configureButtonStyle(buttonSize: .large, buttonTheme: .tertiary, buttonBackground: .blue, cornerRadius: 10, imageName: "")
        XCTAssertEqual(button.buttonTheme, 3)
    }
    
    func testHalanButtonSizes() {
        
        button.configureButtonStyle(buttonSize: .large, buttonTheme: .primary, buttonBackground: .blue, cornerRadius: 6, imageName: "")
        
        XCTAssertEqual(button.buttonSize, 1)
        XCTAssertEqual(button.buttonTheme, 1)
        XCTAssertEqual(button.buttonBackground, 1)
        XCTAssertEqual(button.layer.cornerRadius, 6)
        
        button.configureButtonStyle(buttonSize: .medium, buttonTheme: .primary, buttonBackground: .blue, cornerRadius: 6, imageName: "")
        XCTAssertEqual(button.buttonSize, 2)
        
        button.configureButtonStyle(buttonSize: .small, buttonTheme: .primary, buttonBackground: .blue, cornerRadius: 6, imageName: "")
        XCTAssertEqual(button.buttonSize, 3)
    }
    
    func testHalanButtonBackgrounds() {
        button.configureButtonStyle(buttonSize: .medium, buttonTheme: .secondary, buttonBackground: .blue, cornerRadius: 6, imageName: "")
        XCTAssertEqual(button.buttonSize, 2)
        XCTAssertEqual(button.buttonTheme, 2)
        XCTAssertEqual(button.buttonBackground, 1)
        XCTAssertEqual(button.layer.cornerRadius, 6)
        
        button.configureButtonStyle(buttonSize: .medium, buttonTheme: .tertiary, buttonBackground: .danger, cornerRadius: 6, imageName: "")
        XCTAssertEqual(button.buttonBackground, 2)
    }
    
    func testShowLoader() {
        button.showLoader(userInteraction: true)
        XCTAssertTrue(button.isUserInteractionEnabled)
        XCTAssertNotNil(button.activityIndicator)
        XCTAssertTrue(button.isLoading)
        
        button.showLoader(userInteraction: false)
        XCTAssertFalse(button.isUserInteractionEnabled)
    }
    
    func testHideLoader() {
        button.hideLoader()
        XCTAssertTrue(button.isUserInteractionEnabled)
        XCTAssertFalse(button.activityIndicator.isAnimating)
        XCTAssertFalse(button.isLoading)
    }
    
    func testConfigureButtonAnimation() {
        
        button.configureButtonAnimation(animatedScaleWhenHighlighted: 1.0, animatedScaleDurationWhenHighlighted: 0.5, animatedScaleWhenSelected: 1.5, animatedScaleDurationWhenSelected: 0.4)
        
        button.isHighlighted = true
        XCTAssertEqual(button.animatedScaleWhenHighlighted, 1.0)
        XCTAssertEqual(button.animatedScaleWhenSelected, 1.5)
        
        button.isHighlighted = true
        XCTAssertEqual(button.animatedScaleDurationWhenSelected, 0.4)
        XCTAssertEqual(button.animatedScaleDurationWhenHighlighted, 0.5)
        
    }
    
}
