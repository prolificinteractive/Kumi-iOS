//
//  FontThemeTests.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
import Marker
@testable import Kumi

class ShadowThemeTests: XCTestCase {

    var shadowTheme: ShadowTheme!

    override func setUp() {
        super.setUp()

        super.setUp()

        do {
            let shadowThemeJSON = try JSONHelper.getJSON("Shadows")
            shadowTheme = ShadowTheme(json: shadowThemeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        shadowTheme = nil

        super.tearDown()
    }

    func testShadowThemeCreation() {
        XCTAssertNotNil(shadowTheme.noneShadowStyle)
        XCTAssertNotNil(shadowTheme.extraSmallShadowStyle)
        XCTAssertNotNil(shadowTheme.smallShadowStyle)
        XCTAssertNotNil(shadowTheme.mediumShadowStyle)
        XCTAssertNotNil(shadowTheme.largeShadowStyle)
        XCTAssertNotNil(shadowTheme.extraLargeShadowStyle)

        XCTAssertEqual(shadowTheme.radiusRatio, 2.0)
        XCTAssertEqual(shadowTheme.offsetXRatio, 0.0)
        XCTAssertEqual(shadowTheme.offsetYRatio, 1.0)
    }

}
