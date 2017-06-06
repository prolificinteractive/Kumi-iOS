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
            let layerStyleJSON = try JSONHelper.getJSON("LayerStyle")
            layerStyle = LayerStyle(json: layerStyleJSON)
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
        XCTAssertEqual(layerStyle.cornerRadius, 3.0)
        XCTAssertEqual(layerStyle.backgroundColor, UIColor(colorLiteralRed: 1, green: 0, blue: 0, alpha: 1).cgColor)
        XCTAssertEqual(layerStyle.borderWidth, 0.0)
        XCTAssertEqual(layerStyle.borderColor, UIColor(colorLiteralRed: 0, green: 1, blue: 0, alpha: 1).cgColor)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOpacity, 1.0)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOffset.width, 0)
        XCTAssertEqual(layerStyle.shadowStyle.shadowOffset.height, 7)
        XCTAssertEqual(layerStyle.shadowStyle.shadowRadius, 14)
        XCTAssertEqual(layerStyle.shadowColor, UIColor(colorLiteralRed: 1, green: 1, blue: 0, alpha: 1).cgColor)
        XCTAssertNotNil(layerStyle.transform)
    }
    
}
