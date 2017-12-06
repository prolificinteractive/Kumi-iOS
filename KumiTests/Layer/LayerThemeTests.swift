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

class LayerThemeTests: XCTestCase {

    var layerTheme: LayerTheme!

    override func setUp() {

        super.setUp()

        do {
            let layerThemeJSON = try JSONHelper.getJSON("layerStyle")
            layerTheme = LayerTheme(json: layerThemeJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }

    override func tearDown() {
        layerTheme = nil

        super.tearDown()
    }

    func testLayerThemeCreation() {
        XCTAssertNotNil(layerTheme.textInputTertiary)
        XCTAssertNotNil(layerTheme.textInputSecondary)
        XCTAssertNotNil(layerTheme.textInputPrimary)
        XCTAssertNotNil(layerTheme.buttonTertiary)
        XCTAssertNotNil(layerTheme.buttonSecondary)
        XCTAssertNotNil(layerTheme.buttonPrimary)
        XCTAssertNotNil(layerTheme.listTertiary)
        XCTAssertNotNil(layerTheme.listSecondary)
        XCTAssertNotNil(layerTheme.listPrimary)
        XCTAssertNotNil(layerTheme.gridTertiary)
        XCTAssertNotNil(layerTheme.gridSecondary)
        XCTAssertNotNil(layerTheme.gridPrimary)
        XCTAssertNotNil(layerTheme.defaultTertiary)
        XCTAssertNotNil(layerTheme.defaultSecondary)
        XCTAssertNotNil(layerTheme.defaultPrimary)
    }

}
