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

class LayerStyleTests: XCTestCase {

    var layerStyle: LayerStyle!

    override func setUp() {
        super.setUp()

        do {
            let layerThemeJSON = try JSONHelper.getJSON("layerStyle")
            layerStyle = LayerTheme(json: layerThemeJSON).textInputPrimary.normal
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        layerStyle = nil

        super.tearDown()
    }

    func testLayerStyleJSONCreation() {
        XCTAssertEqual(layerStyle.opacity, 1.0)
        XCTAssertEqual(layerStyle.masksToBounds, false)
        XCTAssertEqual(layerStyle.isDoubleSided, true)
        XCTAssertEqual(layerStyle.cornerRadius, 4.0)
        XCTAssertEqual(layerStyle.backgroundColor, nil)
        XCTAssertEqual(layerStyle.borderWidth, 2.0)
        XCTAssertNotNil(layerStyle.borderColor)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOpacity, 1.0)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOffset.width, 0)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOffset.height, 0)
        XCTAssertEqual(layerStyle.shadowStyle.shadowRadius, 0)
        XCTAssertEqual(layerStyle.shadowColor, nil)
        XCTAssertNotNil(layerStyle.transform)
    }

}
