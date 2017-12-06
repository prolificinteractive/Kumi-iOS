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

        do {
            let fontThemeJSON = try JSONHelper.getJSON("textStyle")
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
        XCTAssertNotNil(fontTheme.tabBarBadgeTextStyle)
        XCTAssertNotNil(fontTheme.tabBarItemInactiveTextStyle)
        XCTAssertNotNil(fontTheme.tabBarItemTextStyle)
        XCTAssertNotNil(fontTheme.snackbarTextTextStyle)
        XCTAssertNotNil(fontTheme.snackbarActionButtonTitleTextStyle)
        XCTAssertNotNil(fontTheme.segmentedTitleTextStyle)
        XCTAssertNotNil(fontTheme.menuTextStyle)
        XCTAssertNotNil(fontTheme.chipTextStyle)
        XCTAssertNotNil(fontTheme.tooltipsTextStyle)
        XCTAssertNotNil(fontTheme.topItemSubtitleTextStyle)
        XCTAssertNotNil(fontTheme.topItemButtonTitleTextStyle)
        XCTAssertNotNil(fontTheme.topItemTitleSmallTextStyle)
        XCTAssertNotNil(fontTheme.topItemTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.topItemTitleNormalTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintSmallTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldHintNormalTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelSmallTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldLabelNormalTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputSmallTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputLargeTextStyle)
        XCTAssertNotNil(fontTheme.textFieldInputNormalTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleSmallTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonTitleNormalTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatTitleSmallTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatTitleLargeTextStyle)
        XCTAssertNotNil(fontTheme.buttonFlatTitleNormalTextStyle)
        XCTAssertNotNil(fontTheme.captionSmallTextStyle)
        XCTAssertNotNil(fontTheme.captionLargeTextStyle)
        XCTAssertNotNil(fontTheme.captionNormalTextStyle)
        XCTAssertNotNil(fontTheme.bodySmallTextStyle)
        XCTAssertNotNil(fontTheme.bodyLargeTextStyle)
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineSmallTextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineLargeTextStyle)
        XCTAssertNotNil(fontTheme.subHeadlineNormalTextStyle)
        XCTAssertNotNil(fontTheme.headline6TextStyle)
        XCTAssertNotNil(fontTheme.headline5TextStyle)
        XCTAssertNotNil(fontTheme.headline4TextStyle)
        XCTAssertNotNil(fontTheme.headline3TextStyle)
        XCTAssertNotNil(fontTheme.headline2TextStyle)
        XCTAssertNotNil(fontTheme.headline1TextStyle)
        XCTAssertNotNil(fontTheme.displaySmallTextStyle)
        XCTAssertNotNil(fontTheme.displayLargeTextStyle)
        XCTAssertNotNil(fontTheme.displayNormalTextStyle)
    }

}
