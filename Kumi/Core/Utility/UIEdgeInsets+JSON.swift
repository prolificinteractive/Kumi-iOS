//
//  UIEdgeInsets+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 27/11/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

extension UIEdgeInsets {
    
    init(json: JSON) {
        let top = json["top"].kumiValue.cgFloatValue
        let right = json["right"].kumiValue.cgFloatValue
        let bottom = json["bottom"].kumiValue.cgFloatValue
        let left = json["left"].kumiValue.cgFloatValue
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    
}
