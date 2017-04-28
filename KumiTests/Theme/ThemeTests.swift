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

    var theme: Theme!
    
    override func setUp() {
        super.setUp()

        do {
            let themeJSON = try JSONHelper.getJSON("Theme")
            theme = Theme(json: themeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        theme = nil

        super.tearDown()
    }
    
    func testThemeCreation() {
        XCTAssertNotNil(theme)
        XCTAssertNotNil(theme.colorTheme)
        XCTAssertNotNil(theme.fontTheme)
    }
    
}
