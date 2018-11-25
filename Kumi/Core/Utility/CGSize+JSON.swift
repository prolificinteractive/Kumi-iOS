//
//  CGSize+JSON.swift
//  Kumi
//
//  Created by VIRAKRI JINANGKUL on 6/4/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

extension CGSize {

    init(json: JSON) {
        let width = json["width"].kumiValue.cgFloatValue
        let height = json["height"].kumiValue.cgFloatValue
        self.init(width: width, height: height)
    }

}
