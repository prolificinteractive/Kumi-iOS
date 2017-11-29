//
//  ColorThemeTests.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
@testable import Kumi

class ColorThemeTests: XCTestCase {

    var colorTheme: ColorTheme!

    override func setUp() {
        super.setUp()

        do {
            let colorThemeJSON = try JSONHelper.getJSON("colorStyle")
            print(colorThemeJSON)
            colorTheme = ColorTheme(json: colorThemeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        colorTheme = nil

        super.tearDown()
    }

    func testColorThemeRegularTertiary() {
        // Given
        let regularTertiary = colorTheme.regularTertiary?.normal
        let regularTertiaryLight = colorTheme.regularTertiary?.light
        let regularTertiaryDark = colorTheme.regularTertiary?.dark
        let regularTertiaryFaded = colorTheme.regularTertiary?.faded
        
        // When
        let expectedRegularTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedRegularTertiaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedRegularTertiaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedRegularTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(regularTertiary, expectedRegularTertiary)
        XCTAssertEqual(regularTertiaryLight, expectedRegularTertiaryLight)
        XCTAssertEqual(regularTertiaryDark, expectedRegularTertiaryDark)
        XCTAssertEqual(regularTertiaryFaded, expectedRegularTertiaryFaded)
    }
    
    
    
    func testColorThemeRegularSecondary() {
        // Given
        let regularSecondary = colorTheme.regularSecondary?.normal
        let regularSecondaryLight = colorTheme.regularSecondary?.light
        let regularSecondaryDark = colorTheme.regularSecondary?.dark
        let regularSecondaryFaded = colorTheme.regularSecondary?.faded
        
        // When
        let expectedRegularSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedRegularSecondaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedRegularSecondaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedRegularSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(regularSecondary, expectedRegularSecondary)
        XCTAssertEqual(regularSecondaryLight, expectedRegularSecondaryLight)
        XCTAssertEqual(regularSecondaryDark, expectedRegularSecondaryDark)
        XCTAssertEqual(regularSecondaryFaded, expectedRegularSecondaryFaded)
    }
    
    
    
    func testColorThemeRegularPrimary() {
        // Given
        let regularPrimary = colorTheme.regularPrimary?.normal
        let regularPrimaryLight = colorTheme.regularPrimary?.light
        let regularPrimaryDark = colorTheme.regularPrimary?.dark
        let regularPrimaryFaded = colorTheme.regularPrimary?.faded
        
        // When
        let expectedRegularPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedRegularPrimaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedRegularPrimaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedRegularPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(regularPrimary, expectedRegularPrimary)
        XCTAssertEqual(regularPrimaryLight, expectedRegularPrimaryLight)
        XCTAssertEqual(regularPrimaryDark, expectedRegularPrimaryDark)
        XCTAssertEqual(regularPrimaryFaded, expectedRegularPrimaryFaded)
    }
    
    
    
    func testColorThemeInvertTertiary() {
        // Given
        let invertTertiary = colorTheme.invertTertiary?.normal
        let invertTertiaryLight = colorTheme.invertTertiary?.light
        let invertTertiaryDark = colorTheme.invertTertiary?.dark
        let invertTertiaryFaded = colorTheme.invertTertiary?.faded
        
        // When
        let expectedInvertTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertTertiaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertTertiaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertTertiary, expectedInvertTertiary)
        XCTAssertEqual(invertTertiaryLight, expectedInvertTertiaryLight)
        XCTAssertEqual(invertTertiaryDark, expectedInvertTertiaryDark)
        XCTAssertEqual(invertTertiaryFaded, expectedInvertTertiaryFaded)
    }
    
    
    
    func testColorThemeInvertSecondary() {
        // Given
        let invertSecondary = colorTheme.invertSecondary?.normal
        let invertSecondaryLight = colorTheme.invertSecondary?.light
        let invertSecondaryDark = colorTheme.invertSecondary?.dark
        let invertSecondaryFaded = colorTheme.invertSecondary?.faded
        
        // When
        let expectedInvertSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertSecondaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertSecondaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertSecondary, expectedInvertSecondary)
        XCTAssertEqual(invertSecondaryLight, expectedInvertSecondaryLight)
        XCTAssertEqual(invertSecondaryDark, expectedInvertSecondaryDark)
        XCTAssertEqual(invertSecondaryFaded, expectedInvertSecondaryFaded)
    }
    
    
    
    func testColorThemeInvertPrimary() {
        // Given
        let invertPrimary = colorTheme.invertPrimary?.normal
        let invertPrimaryLight = colorTheme.invertPrimary?.light
        let invertPrimaryDark = colorTheme.invertPrimary?.dark
        let invertPrimaryFaded = colorTheme.invertPrimary?.faded
        
        // When
        let expectedInvertPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertPrimaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertPrimaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertPrimary, expectedInvertPrimary)
        XCTAssertEqual(invertPrimaryLight, expectedInvertPrimaryLight)
        XCTAssertEqual(invertPrimaryDark, expectedInvertPrimaryDark)
        XCTAssertEqual(invertPrimaryFaded, expectedInvertPrimaryFaded)
    }
    
    
    
    func testColorThemeEmphasisTertiary() {
        // Given
        let emphasisTertiary = colorTheme.emphasisTertiary?.normal
        let emphasisTertiaryLight = colorTheme.emphasisTertiary?.light
        let emphasisTertiaryDark = colorTheme.emphasisTertiary?.dark
        let emphasisTertiaryFaded = colorTheme.emphasisTertiary?.faded
        
        // When
        let expectedEmphasisTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisTertiaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisTertiaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedEmphasisTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(emphasisTertiary, expectedEmphasisTertiary)
        XCTAssertEqual(emphasisTertiaryLight, expectedEmphasisTertiaryLight)
        XCTAssertEqual(emphasisTertiaryDark, expectedEmphasisTertiaryDark)
        XCTAssertEqual(emphasisTertiaryFaded, expectedEmphasisTertiaryFaded)
    }
    
    
    
    func testColorThemeEmphasisSecondary() {
        // Given
        let emphasisSecondary = colorTheme.emphasisSecondary?.normal
        let emphasisSecondaryLight = colorTheme.emphasisSecondary?.light
        let emphasisSecondaryDark = colorTheme.emphasisSecondary?.dark
        let emphasisSecondaryFaded = colorTheme.emphasisSecondary?.faded
        
        // When
        let expectedEmphasisSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisSecondaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisSecondaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedEmphasisSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(emphasisSecondary, expectedEmphasisSecondary)
        XCTAssertEqual(emphasisSecondaryLight, expectedEmphasisSecondaryLight)
        XCTAssertEqual(emphasisSecondaryDark, expectedEmphasisSecondaryDark)
        XCTAssertEqual(emphasisSecondaryFaded, expectedEmphasisSecondaryFaded)
    }
    
    
    
    func testColorThemeEmphasisPrimary() {
        // Given
        let emphasisPrimary = colorTheme.emphasisPrimary?.normal
        let emphasisPrimaryLight = colorTheme.emphasisPrimary?.light
        let emphasisPrimaryDark = colorTheme.emphasisPrimary?.dark
        let emphasisPrimaryFaded = colorTheme.emphasisPrimary?.faded
        
        // When
        let expectedEmphasisPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisPrimaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisPrimaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedEmphasisPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(emphasisPrimary, expectedEmphasisPrimary)
        XCTAssertEqual(emphasisPrimaryLight, expectedEmphasisPrimaryLight)
        XCTAssertEqual(emphasisPrimaryDark, expectedEmphasisPrimaryDark)
        XCTAssertEqual(emphasisPrimaryFaded, expectedEmphasisPrimaryFaded)
    }
    
    
    
    func testColorThemeInvertEmphasisTertiary() {
        // Given
        let invertEmphasisTertiary = colorTheme.invertEmphasisTertiary?.normal
        let invertEmphasisTertiaryLight = colorTheme.invertEmphasisTertiary?.light
        let invertEmphasisTertiaryDark = colorTheme.invertEmphasisTertiary?.dark
        let invertEmphasisTertiaryFaded = colorTheme.invertEmphasisTertiary?.faded
        
        // When
        let expectedInvertEmphasisTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisTertiaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisTertiaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertEmphasisTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertEmphasisTertiary, expectedInvertEmphasisTertiary)
        XCTAssertEqual(invertEmphasisTertiaryLight, expectedInvertEmphasisTertiaryLight)
        XCTAssertEqual(invertEmphasisTertiaryDark, expectedInvertEmphasisTertiaryDark)
        XCTAssertEqual(invertEmphasisTertiaryFaded, expectedInvertEmphasisTertiaryFaded)
    }
    
    
    
    func testColorThemeInvertEmphasisSecondary() {
        // Given
        let invertEmphasisSecondary = colorTheme.invertEmphasisSecondary?.normal
        let invertEmphasisSecondaryLight = colorTheme.invertEmphasisSecondary?.light
        let invertEmphasisSecondaryDark = colorTheme.invertEmphasisSecondary?.dark
        let invertEmphasisSecondaryFaded = colorTheme.invertEmphasisSecondary?.faded
        
        // When
        let expectedInvertEmphasisSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisSecondaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisSecondaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertEmphasisSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertEmphasisSecondary, expectedInvertEmphasisSecondary)
        XCTAssertEqual(invertEmphasisSecondaryLight, expectedInvertEmphasisSecondaryLight)
        XCTAssertEqual(invertEmphasisSecondaryDark, expectedInvertEmphasisSecondaryDark)
        XCTAssertEqual(invertEmphasisSecondaryFaded, expectedInvertEmphasisSecondaryFaded)
    }
    
    
    
    func testColorThemeInvertEmphasisPrimary() {
        // Given
        let invertEmphasisPrimary = colorTheme.invertEmphasisPrimary?.normal
        let invertEmphasisPrimaryLight = colorTheme.invertEmphasisPrimary?.light
        let invertEmphasisPrimaryDark = colorTheme.invertEmphasisPrimary?.dark
        let invertEmphasisPrimaryFaded = colorTheme.invertEmphasisPrimary?.faded
        
        // When
        let expectedInvertEmphasisPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisPrimaryLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisPrimaryDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedInvertEmphasisPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(invertEmphasisPrimary, expectedInvertEmphasisPrimary)
        XCTAssertEqual(invertEmphasisPrimaryLight, expectedInvertEmphasisPrimaryLight)
        XCTAssertEqual(invertEmphasisPrimaryDark, expectedInvertEmphasisPrimaryDark)
        XCTAssertEqual(invertEmphasisPrimaryFaded, expectedInvertEmphasisPrimaryFaded)
    }
    
    
    
    func testColorThemeDestructive() {
        // Given
        let destructive = colorTheme.destructive?.normal
        let destructiveLight = colorTheme.destructive?.light
        let destructiveDark = colorTheme.destructive?.dark
        let destructiveFaded = colorTheme.destructive?.faded
        
        // When
        let expectedDestructive = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedDestructiveLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedDestructiveDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedDestructiveFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(destructive, expectedDestructive)
        XCTAssertEqual(destructiveLight, expectedDestructiveLight)
        XCTAssertEqual(destructiveDark, expectedDestructiveDark)
        XCTAssertEqual(destructiveFaded, expectedDestructiveFaded)
    }
    
    
    
    func testColorThemeGrayout() {
        // Given
        let grayout = colorTheme.grayout?.normal
        let grayoutLight = colorTheme.grayout?.light
        let grayoutDark = colorTheme.grayout?.dark
        let grayoutFaded = colorTheme.grayout?.faded
        
        // When
        let expectedGrayout = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedGrayoutLight = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedGrayoutDark = UIColor(red: 0.3, green: 0.2, blue: 0.2, alpha: 1)
        let expectedGrayoutFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)
        
        // Then
        XCTAssertEqual(grayout, expectedGrayout)
        XCTAssertEqual(grayoutLight, expectedGrayoutLight)
        XCTAssertEqual(grayoutDark, expectedGrayoutDark)
        XCTAssertEqual(grayoutFaded, expectedGrayoutFaded)
    }

}
