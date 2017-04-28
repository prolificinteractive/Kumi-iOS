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

class TextStyleTests: XCTestCase {

    var textStyle: TextStyle!
    
    override func setUp() {
        super.setUp()

        do {
            let textStyleJSON = try JSONHelper.getJSON("FontStyle")
            textStyle = TextStyle(json: textStyleJSON)
        }
        catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        textStyle = nil

        super.tearDown()
    }
    
    func testTextStyleJSONCreation() {
        XCTAssertNotNil(textStyle.font)
        XCTAssertEqual(textStyle.characterSpacing, 1.0)
        XCTAssertEqual(textStyle.lineSpacing, 0.0)
        XCTAssertEqual(textStyle.lineHeightMultiple, 1.0)
        XCTAssertEqual(textStyle.minimumLineHeight, 10.0)
        XCTAssertEqual(textStyle.maximumLineHeight, 25.0)
        XCTAssertEqual(textStyle.paragraphSpacing, 12.0)
        XCTAssertEqual(textStyle.paragraphSpacingBefore, 3.0)
        XCTAssertEqual(textStyle.textAlignment, .left)
        XCTAssertEqual(textStyle.lineBreakMode, .byTruncatingTail)
    }
    
}
