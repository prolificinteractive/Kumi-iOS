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
        } catch let error {
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

    func testColorThemeEmphasisSecondary() {
        // Given
        let emphasisSecondary = colorTheme.emphasisSecondary
        let emphasisSecondaryMuted = colorTheme.emphasisSecondaryMuted
        let emphasisSecondaryFaded = colorTheme.emphasisSecondaryFaded

        // When
        let expectedEmphasisSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisSecondaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(emphasisSecondary, expectedEmphasisSecondary)
        XCTAssertEqual(emphasisSecondaryMuted, expectedEmphasisSecondaryMuted)
        XCTAssertEqual(emphasisSecondaryFaded, expectedEmphasisSecondaryFaded)
    }

    func testColorThemeEmphasisTertiary() {
        // Given
        let emphasisTertiary = colorTheme.emphasisTertiary
        let emphasisTertiaryMuted = colorTheme.emphasisTertiaryMuted
        let emphasisTertiaryFaded = colorTheme.emphasisTertiaryFaded

        // When
        let expectedEmphasisTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedEmphasisTertiaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedEmphasisTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(emphasisTertiary, expectedEmphasisTertiary)
        XCTAssertEqual(emphasisTertiaryMuted, expectedEmphasisTertiaryMuted)
        XCTAssertEqual(emphasisTertiaryFaded, expectedEmphasisTertiaryFaded)
    }

    func testColorThemeInvertEmphasisPrimary() {
        // Given
        let invertEmphasisPrimary = colorTheme.invertEmphasisPrimary
        let invertEmphasisPrimaryMuted = colorTheme.invertEmphasisPrimaryMuted
        let invertEmphasisPrimaryFaded = colorTheme.invertEmphasisPrimaryFaded

        // When
        let expectedInvertEmphasisPrimary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisPrimaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisPrimaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertEmphasisPrimary, expectedInvertEmphasisPrimary)
        XCTAssertEqual(invertEmphasisPrimaryMuted, expectedInvertEmphasisPrimaryMuted)
        XCTAssertEqual(invertEmphasisPrimaryFaded, expectedInvertEmphasisPrimaryFaded)
    }

    func testColorThemeInvertEmphasisSecondary() {
        // Given
        let invertEmphasisSecondary = colorTheme.invertEmphasisSecondary
        let invertEmphasisSecondaryMuted = colorTheme.invertEmphasisSecondaryMuted
        let invertEmphasisSecondaryFaded = colorTheme.invertEmphasisSecondaryFaded

        // When
        let expectedInvertEmphasisSecondary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisSecondaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisSecondaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertEmphasisSecondary, expectedInvertEmphasisSecondary)
        XCTAssertEqual(invertEmphasisSecondaryMuted, expectedInvertEmphasisSecondaryMuted)
        XCTAssertEqual(invertEmphasisSecondaryFaded, expectedInvertEmphasisSecondaryFaded)
    }

    func testColorThemeInvertEmphasisTertiary() {
        // Given
        let invertEmphasisTertiary = colorTheme.invertEmphasisTertiary
        let invertEmphasisTertiaryMuted = colorTheme.invertEmphasisTertiaryMuted
        let invertEmphasisTertiaryFaded = colorTheme.invertEmphasisTertiaryFaded

        // When
        let expectedInvertEmphasisTertiary = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedInvertEmphasisTertiaryMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedInvertEmphasisTertiaryFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(invertEmphasisTertiary, expectedInvertEmphasisTertiary)
        XCTAssertEqual(invertEmphasisTertiaryMuted, expectedInvertEmphasisTertiaryMuted)
        XCTAssertEqual(invertEmphasisTertiaryFaded, expectedInvertEmphasisTertiaryFaded)
    }

    func testColorThemeGrayout() {
        // Given
        let grayout = colorTheme.grayout
        let grayoutMuted = colorTheme.grayoutMuted
        let grayoutFaded = colorTheme.grayoutFaded

        // When
        let expectedGrayout = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedGrayoutMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedGrayoutFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(grayout, expectedGrayout)
        XCTAssertEqual(grayoutMuted, expectedGrayoutMuted)
        XCTAssertEqual(grayoutFaded, expectedGrayoutFaded)
    }

    func testColorThemeDestructive() {
        // Given
        let destructive = colorTheme.destructive
        let destructiveMuted = colorTheme.destructiveMuted
        let destructiveFaded = colorTheme.destructiveFaded

        // When
        let expectedDestructive = UIColor(red: 0.1, green: 0.2, blue: 0.3, alpha: 0.6)
        let expectedDestructiveMuted = UIColor(red: 0.9, green: 0.8, blue: 0.4, alpha: 0.3)
        let expectedDestructiveFaded = UIColor(red: 0.5, green: 0.5, blue: 0.4, alpha: 0.2)

        // Then
        XCTAssertEqual(destructive, expectedDestructive)
        XCTAssertEqual(destructiveMuted, expectedDestructiveMuted)
        XCTAssertEqual(destructiveFaded, expectedDestructiveFaded)
    }

}
