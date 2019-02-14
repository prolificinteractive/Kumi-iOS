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
        
        let top, left, right, bottom: CGFloat
        if json["all"].exists() {
            let value = json["all"].kumiValue.cgFloatValue
            top = value
            right = value
            bottom = value
            left = value
        }else{
            top = json["top"].kumiValue.cgFloatValue
            right = json["right"].kumiValue.cgFloatValue
            bottom = json["bottom"].kumiValue.cgFloatValue
            left = json["left"].kumiValue.cgFloatValue
        }
        
        self.init(top: top, left: left, bottom: bottom, right: right)
    }
    
}
