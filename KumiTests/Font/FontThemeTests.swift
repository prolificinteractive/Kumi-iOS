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

class FontThemeTests: XCTestCase {

    var fontTheme: FontTheme!

    override func setUp() {
        super.setUp()

        super.setUp()

        do {
            let fontThemeJSON = try JSONHelper.getJSON("Fonts")
            fontTheme = FontTheme(json: fontThemeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        fontTheme = nil

        super.tearDown()
    }

    func testFontThemeCreation() {
        XCTAssertNotNil(fontTheme.displayTextStyle)
        XCTAssertNotNil(fontTheme.displayLargeTextStyle)
        XCTAssertNotNil(fontTheme.displaySmallTextStyle)
        XCTAssertNotNil(fontTheme.headline1TextStyle)
        XCTAssertNotNil(fontTheme.headline2TextStyle)
        XCTAssertNotNil(fontTheme.headline3TextStyle)
        XCTAssertNotNil(fontTheme.headline4TextStyle)
        XCTAssertNotNil(fontTheme.headline5TextStyle)
        XCTAssertNotNil(fontTheme.headline6TextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineTextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineLargeTextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineSmallTextStyle)
        XCTAssertNotNil(fontTheme.bodyTextStyle)
        XCTAssertNotNil(fontTheme.bodyLargeTextStyle)
        XCTAssertNotNil(fontTheme.bodySmallTextStyle)
        XCTAssertNotNil(fontTheme.captionTextStyle)
        XCTAssertNotNil(fontTheme.captionLargeTextStyle)
        XCTAssertNotNil(fontTheme.captionSmallTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleSmallTextStyle)
        XCTAssertNotNil(fontTheme.buttonFloatingTitleTextStyle)
        XCTAssertNotNil(fontTheme.buttonFloatingTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonFloatingTitleSmallTextStyle)
        XCTAssertNotNil(fontTheme.topItemPromptTextStyle)
        XCTAssertNotNil(fontTheme.topItemTitleTextStyle)
        XCTAssertNotNil(fontTheme.topItemButtonItemTextStyle)
        XCTAssertNotNil(fontTheme.tabBarItemTitleTextStyle)
        XCTAssertNotNil(fontTheme.tabBarItemBadgeTextStyle)
        XCTAssertNotNil(fontTheme.segmentedTitleTextStyle)
        XCTAssertNotNil(fontTheme.textFieldTitleTextStyle)
        XCTAssertNotNil(fontTheme.textFieldTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldTitleSmallTextStyle)
    }

}
