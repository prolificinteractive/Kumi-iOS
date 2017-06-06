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

class CABasicAnimationStyleTests: XCTestCase {

    var animationStyle: CABasicAnimationStyle!

    override func setUp() {
        super.setUp()

        do {
            let animationStyleJSON = try JSONHelper.getJSON("CABasicAnimationStyle")
            animationStyle = CABasicAnimationStyle(json: animationStyleJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        animationStyle = nil

        super.tearDown()
    }

    func testCABasicAnimationStyleJSONCreation() {
        XCTAssertEqual(animationStyle.duration, 0.35)
        XCTAssertEqual(animationStyle.delay, 0.0)
        XCTAssertNotNil(animationStyle.timingFunction)
        XCTAssertEqual(animationStyle.isRemovedOnCompletion, true)
    }

}
