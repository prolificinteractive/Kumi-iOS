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

    override func setUp() {
        super.setUp()

        Kumi.setup(withJSON: try! JSONHelper.getJSON("Theme"))
    }

    override func tearDown() {
        super.tearDown()
    }

    func testThemeCreation() {
        XCTAssertNotNil(Kumi.constants)
        XCTAssertEqual(Kumi.constants["numbers"]["xxsmall"].cgFloatValue, 2)
        XCTAssertEqual(Kumi.generics.animations.extraFastUIViewAnimationStyle.duration, 0.17499999999999999)
        XCTAssertEqual(Kumi.generics.animations.extraFastCABasicAnimationStyle.duration, 0.087499999999999994)
        XCTAssertEqual(Kumi.functionals["NeonButton"]["normalLayerStyle"].kumiValue.rawString()!, Kumi.generics["layers"]["buttonPrimary"]["normal"].kumiValue.rawString()!)
        XCTAssertEqual(Kumi.constants["urls"]["navigationBarLogoURL"].kumiValue.stringValue, "https://firebasestorage.googleapis.com/v0/b/platform-x-demo.appspot.com/o/image_logo_levis.pdf?alt=media&token=e5f0df99-2428-41ed-9fbf-7af8859fd608")
       print(Kumi.functionals["ProductCategoryCollectionViewCell"])
        XCTAssertEqual(Kumi.functionals["ProductCategoryCollectionViewCell"]["cellWidthDiverder"]["large"].kumiValue.cgFloatValue, 250)
        
        
    }
}
