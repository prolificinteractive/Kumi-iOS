//
//  TextStyleSetTests.swift
//  KumiTests
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import XCTest
import Marker
@testable import Kumi

class TextStyleSetTests: XCTestCase {
    
    var fontTheme: FontTheme!
        
    override func setUp() {
        
        super.setUp()
        
        do {
            let textStyleSetJSON = try JSONHelper.getJSON("textStyle")
            fontTheme = FontTheme(json: textStyleSetJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        
        fontTheme = nil
        
        super.tearDown()
    }
    
    func testTextStyleSetJSONCreation() {
        
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle.regular)
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle.strong)
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle.emphasis)
        
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle.regular.font)
        XCTAssertNotNil(fontTheme.bodyNormalTextStyle.regular.textTransform)
        
    }
    
}
