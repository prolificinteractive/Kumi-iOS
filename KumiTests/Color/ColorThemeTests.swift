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
            let colorThemeJSON = try JSONHelper.getJSON("Colors")
            colorTheme = ColorTheme(json: colorThemeJSON)
        }
        catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        colorTheme = nil

        super.tearDown()
    }
    
    func testColorThemePrimary() {
        // Given
        let primary = colorTheme.primary
        let primaryMuted = colorTheme.primaryMuted
        let primaryFaded = colorTheme.primaryFaded

        // When
        let expectedPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedPrimaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(primary, expectedPrimary)
        XCTAssertEqual(primaryMuted, expectedPrimaryMuted)
        XCTAssertEqual(primaryFaded, expectedPrimaryFaded)
    }

    func testColorThemeSecondary() {
        // Given
        let secondary = colorTheme.secondary
        let secondaryMuted = colorTheme.secondaryMuted
        let secondaryFaded = colorTheme.secondaryFaded

        // When
        let expectedSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedSecondaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(secondary, expectedSecondary)
        XCTAssertEqual(secondaryMuted, expectedSecondaryMuted)
        XCTAssertEqual(secondaryFaded, expectedSecondaryFaded)
    }

    func testColorThemeTertiary() {
        // Given
        let tertiary = colorTheme.tertiary
        let tertiaryMuted = colorTheme.tertiaryMuted
        let tertiaryFaded = colorTheme.tertiaryFaded

        // When
        let expectedTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedTertiaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(tertiary, expectedTertiary)
        XCTAssertEqual(tertiaryMuted, expectedTertiaryMuted)
        XCTAssertEqual(tertiaryFaded, expectedTertiaryFaded)
    }

    func testColorThemeInvertPrimary() {
        // Given
        let invertPrimary = colorTheme.invertPrimary
        let invertPrimaryMuted = colorTheme.invertPrimaryMuted
        let invertPrimaryFaded = colorTheme.invertPrimaryFaded

        // When
        let expectedInvertPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertPrimaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertPrimary, expectedInvertPrimary)
        XCTAssertEqual(invertPrimaryMuted, expectedInvertPrimaryMuted)
        XCTAssertEqual(invertPrimaryFaded, expectedInvertPrimaryFaded)
    }

    func testColorThemeInvertSecondary() {
        // Given
        let invertSecondary = colorTheme.invertSecondary
        let invertSecondaryMuted = colorTheme.invertSecondaryMuted
        let invertSecondaryFaded = colorTheme.invertSecondaryFaded

        // When
        let expectedInvertSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertSecondaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertSecondary, expectedInvertSecondary)
        XCTAssertEqual(invertSecondaryMuted, expectedInvertSecondaryMuted)
        XCTAssertEqual(invertSecondaryFaded, expectedInvertSecondaryFaded)
    }

    func testColorThemeInvertTertiary() {
        // Given
        let invertTertiary = colorTheme.invertTertiary
        let invertTertiaryMuted = colorTheme.invertTertiaryMuted
        let invertTertiaryFaded = colorTheme.invertTertiaryFaded

        // When
        let expectedInvertTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertTertiaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertTertiary, expectedInvertTertiary)
        XCTAssertEqual(invertTertiaryMuted, expectedInvertTertiaryMuted)
        XCTAssertEqual(invertTertiaryFaded, expectedInvertTertiaryFaded)
    }

    func testColorThemeEmphasisPrimary() {
        // Given
        let emphasisPrimary = colorTheme.emphasisPrimary
        let emphasisPrimaryMuted = colorTheme.emphasisPrimaryMuted
        let emphasisPrimaryFaded = colorTheme.emphasisPrimaryFaded

        // When
        let expectedEmphasisPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisPrimaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(emphasisPrimary, expectedEmphasisPrimary)
        XCTAssertEqual(emphasisPrimaryMuted, expectedEmphasisPrimaryMuted)
        XCTAssertEqual(emphasisPrimaryFaded, expectedEmphasisPrimaryFaded)
    }
    
}
