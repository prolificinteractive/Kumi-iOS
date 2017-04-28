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
        }
        catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        fontTheme = nil

        super.tearDown()
    }
    
    func testFontThemeDisplay() {
        XCTAssertNotNil(fontTheme.displayTextStyle)
    }
    
}
