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

        super.setUp()

        do {
            let layerThemeJSON = try JSONHelper.getJSON("Layers")
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
        XCTAssertNotNil(layerTheme.emptyLayerStyle)
        XCTAssertNotNil(layerTheme.primaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.primaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.primaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.primarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.primaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.secondaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.secondaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.secondaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.secondarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.secondaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.tertiaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.tertiaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.tertiaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.tertiarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.tertiaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.buttonPrimaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.buttonPrimaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonPrimaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonPrimarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonPrimaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.buttonSecondaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.buttonSecondaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonSecondaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonSecondarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonSecondaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.buttonTertiaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.buttonTertiaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonTertiaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonTertiarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.buttonTertiaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.gridPrimaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.gridPrimaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.gridPrimaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.gridPrimarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.gridPrimaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.gridSecondaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.gridSecondaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.gridSecondaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.gridSecondarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.gridSecondaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.gridTertiaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.gridTertiaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.gridTertiaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.gridTertiarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.gridTertiaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.listPrimaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.listPrimaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.listPrimaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.listPrimarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.listPrimaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.listSecondaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.listSecondaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.listSecondaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.listSecondarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.listSecondaryDiabledLayerStyle)
        XCTAssertNotNil(layerTheme.listTertiaryNormalLayerStyle)
        XCTAssertNotNil(layerTheme.listTertiaryHightlightedLayerStyle)
        XCTAssertNotNil(layerTheme.listTertiaryFocusedLayerStyle)
        XCTAssertNotNil(layerTheme.listTertiarySelectedLayerStyle)
        XCTAssertNotNil(layerTheme.listTertiaryDiabledLayerStyle)
    }

}
