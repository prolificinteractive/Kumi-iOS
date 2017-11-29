//
//  ThemeTests.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
@testable import Kumi

class ThemeTests: XCTestCase {

    override func setUp() {
        super.setUp()

        Kumi.setup(bundle: Bundle(for: type(of: self)))
    }

    override func tearDown() {

        super.tearDown()
    }

    func testThemeCreation() {
        XCTAssertNotNil(Kumi.color)
        XCTAssertNotNil(Kumi.font)
        XCTAssertNotNil(Kumi.layer)
        XCTAssertNotNil(Kumi.animation)
        XCTAssertNotNil(Kumi.shadow)
    }

}
