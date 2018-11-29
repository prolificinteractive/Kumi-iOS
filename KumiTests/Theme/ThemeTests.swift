//
//  ThemeTests.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
@testable import Kumi
@testable import Marker

class ThemeTests: XCTestCase {

    override func setUp() {
        super.setUp()

        Kumi.setup(withJSON: try! JSONHelper.getJSON("Theme"))
    }

    override func tearDown() {
        super.tearDown()
    }

    func testThemeCreation() {
        XCTAssertNotNil(Kumi.constants)
        XCTAssertEqual("#ff4f0421", Kumi.generics.colors.regularPrimary.normal.toHexString())
        XCTAssertEqual(Kumi.generics.texts.bodyNormalTextStyle.regular.textColor!.toHexString(), "#ff4f0421")
        XCTAssertEqual(Kumi.generics.texts.displayNormalTextStyle.regular.font.pointSize, 32)
        XCTAssertEqual(Kumi.functionals["NeonLabel"]["isHighlighted"]["animationStyle"].uiViewAnimationStyle.duration, 4)
        XCTAssertEqual(Kumi.generics.animations.extraFastUIViewAnimationStyle.duration, 0.17499999999999999)
        XCTAssertEqual(Kumi.generics.animations.extraFastCABasicAnimationStyle.duration, 0.087499999999999994)
    }

}
