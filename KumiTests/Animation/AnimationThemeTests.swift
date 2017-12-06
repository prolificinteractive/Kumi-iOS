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

class AnimationThemeTests: XCTestCase {

    var animationTheme: AnimationTheme!

    override func setUp() {

        super.setUp()

        do {
            let animationThemeJSON = try JSONHelper.getJSON("Animations")
            animationTheme = AnimationTheme(json: animationThemeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        animationTheme = nil

        super.tearDown()
    }

    func testAnimationThemeCreation() {
        
        XCTAssertNotNil(animationTheme.extraFastCABasicAnimationStyle)
        XCTAssertNotNil(animationTheme.fastCABasicAnimationStyle)
        XCTAssertNotNil(animationTheme.normalCABasicAnimationStyle)
        XCTAssertNotNil(animationTheme.slowCABasicAnimationStyle)
        XCTAssertNotNil(animationTheme.extraSlowCABasicAnimationStyle)

        XCTAssertNotNil(animationTheme.extraFastCABasicAnimationStyle)
        XCTAssertNotNil(animationTheme.fastUIViewAnimationStyle)
        XCTAssertNotNil(animationTheme.normalUIViewAnimationStyle)
        XCTAssertNotNil(animationTheme.slowUIViewAnimationStyle)
        XCTAssertNotNil(animationTheme.extraSlowUIViewAnimationStyle)
    }

}
