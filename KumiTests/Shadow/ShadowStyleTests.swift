//
//  TextStyleTests.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
import Marker
@testable import Kumi

class ShadowStyleTests: XCTestCase {

    var shadowStyle: ShadowStyle!

    override func setUp() {
        super.setUp()

        do {
            let shadowStyleJSON = try JSONHelper.getJSON("ShadowStyle")
            shadowStyle = ShadowStyle(json: shadowStyleJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        shadowStyle = nil

        super.tearDown()
    }

    func testShadowStyleJSONCreation() {
        XCTAssertEqual(shadowStyle.shadowOpacity, 1.0)
        XCTAssertEqual(shadowStyle.shadowRadius, 14)
        XCTAssertEqual(shadowStyle.shadowOffset.width, 0.0)
        XCTAssertEqual(shadowStyle.shadowOffset.height, 7.0)
        XCTAssertEqual(shadowStyle.shadowColor, UIColor(red: 1, green: 0, blue: 0, alpha: 1).cgColor)
    }

}
