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
        XCTAssertEqual(Kumi.generics["colors.regularPrimary.normal"] as! UIColor, Kumi.generics.colors.regularPrimary.normal)
        XCTAssertEqual((Kumi.generics["texts.bodyNormal.regular"] as! TextStyle).font, Kumi.generics.texts.bodyNormalTextStyle.regular.font)
        XCTAssertEqual((Kumi.generics["animations.UIViewAnimations.fast"] as! UIViewAnimationStyle).duration, Kumi.generics.animations.fastUIViewAnimationStyle.duration)
        XCTAssertEqual(Kumi.generics.texts.bodyNormalTextStyle.regular.textColor!.toHexString(), Kumi.generics.colors.regularPrimary.normal.toHexString())
        
    }

}
