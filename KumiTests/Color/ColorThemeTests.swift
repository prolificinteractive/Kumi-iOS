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
        let primary = colorTheme.primary?.normal
        let primaryMuted = colorTheme.primary?.muted
        let primaryFaded = colorTheme.primary?.faded

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
        let secondary = colorTheme.secondary?.normal
        let secondaryMuted = colorTheme.secondary?.muted
        let secondaryFaded = colorTheme.secondary?.faded

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
        let tertiary = colorTheme.tertiary?.normal
        let tertiaryMuted = colorTheme.tertiary?.muted
        let tertiaryFaded = colorTheme.tertiary?.faded

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
        let invertPrimary = colorTheme.invertPrimary?.normal
        let invertPrimaryMuted = colorTheme.invertPrimary?.muted
        let invertPrimaryFaded = colorTheme.invertPrimary?.faded

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
        let invertSecondary = colorTheme.invertSecondary?.normal
        let invertSecondaryMuted = colorTheme.invertSecondary?.muted
        let invertSecondaryFaded = colorTheme.invertSecondary?.faded

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
        let invertTertiary = colorTheme.invertTertiary?.normal
        let invertTertiaryMuted = colorTheme.invertTertiary?.muted
        let invertTertiaryFaded = colorTheme.invertTertiary?.faded

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
        let emphasisPrimary = colorTheme.emphasisPrimary?.normal
        let emphasisPrimaryMuted = colorTheme.emphasisPrimary?.muted
        let emphasisPrimaryFaded = colorTheme.emphasisPrimary?.faded

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
        let emphasisSecondary = colorTheme.emphasisSecondary?.normal
        let emphasisSecondaryMuted = colorTheme.emphasisSecondary?.muted
        let emphasisSecondaryFaded = colorTheme.emphasisSecondary?.faded

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
        let emphasisTertiary = colorTheme.emphasisTertiary?.normal
        let emphasisTertiaryMuted = colorTheme.emphasisTertiary?.muted
        let emphasisTertiaryFaded = colorTheme.emphasisTertiary?.faded

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
        let invertEmphasisPrimary = colorTheme.invertEmphasisPrimary?.normal
        let invertEmphasisPrimaryMuted = colorTheme.invertEmphasisPrimary?.muted
        let invertEmphasisPrimaryFaded = colorTheme.invertEmphasisPrimary?.faded

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
        let invertEmphasisSecondary = colorTheme.invertEmphasisSecondary?.normal
        let invertEmphasisSecondaryMuted = colorTheme.invertEmphasisSecondary?.muted
        let invertEmphasisSecondaryFaded = colorTheme.invertEmphasisSecondary?.faded

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
        let invertEmphasisTertiary = colorTheme.invertEmphasisTertiary?.normal
        let invertEmphasisTertiaryMuted = colorTheme.invertEmphasisTertiary?.muted
        let invertEmphasisTertiaryFaded = colorTheme.invertEmphasisTertiary?.faded

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
        let grayout = colorTheme.grayout?.normal
        let grayoutMuted = colorTheme.grayout?.muted
        let grayoutFaded = colorTheme.grayout?.faded

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
        let destructive = colorTheme.destructive?.normal
        let destructiveMuted = colorTheme.destructive?.muted
        let destructiveFaded = colorTheme.destructive?.faded

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
