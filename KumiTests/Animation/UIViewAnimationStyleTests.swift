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

class UIViewAnimationStyleTests: XCTestCase {
    
    var animationStyle: UIViewAnimationStyle!
    
    override func setUp() {
        super.setUp()
        
        do {
            let animationStyleJSON = try JSONHelper.getJSON("UIViewAnimationStyle")
            animationStyle = UIViewAnimationStyle(json: animationStyleJSON)
        } catch let error {
            XCTFail(error.localizedDescription)
        }
    }
    
    override func tearDown() {
        animationStyle = nil
        
        super.tearDown()
    }
    
    func testCABasicAnimationStyleJSONCreation() {
        XCTAssertEqual(animationStyle.duration, 0.35)
        XCTAssertEqual(animationStyle.delay, 0.0)
        XCTAssertEqual(animationStyle.dampingRatio, 1.0)
        XCTAssertEqual(animationStyle.velocity, 0.0)
    }
    
}
