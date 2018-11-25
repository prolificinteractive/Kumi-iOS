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

        Kumi.setup(withJSON: try! JSONHelper.getJSON("Theme"))
    }

    override func tearDown() {
        super.tearDown()
    }

    func testThemeCreation() {
        XCTAssertNotNil(Kumi.constants)
        XCTAssertEqual("#ff4f0421", Kumi.generics.colors.regularPrimary.normal.toHexString())
        print(Generics.dictionary)
        XCTAssertEqual(Generics.dictionary["colors.regularPrimary.normal"] as! UIColor, Kumi.generics.colors.regularPrimary.normal)
        
    }

}
