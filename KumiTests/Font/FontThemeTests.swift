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
        XCTAssertNotNil(fontTheme.topItemTitleTextStyle)
        XCTAssertNotNil(fontTheme.topItemSubtitleTextStyle)
        XCTAssertNotNil(fontTheme.topItemButtonTextStyle)
        XCTAssertNotNil(fontTheme.tabBarItemTextStyle)
        XCTAssertNotNil(fontTheme.tabBarBadgeTextStyle)
        XCTAssertNotNil(fontTheme.buttonTextStyle)
        XCTAssertNotNil(fontTheme.buttonLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonSmallTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatSmallTextStyle)
        XCTAssertNotNil(fontTheme.segmentedTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelSmallTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputSmallTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintSmallTextStyle)
    }

}
