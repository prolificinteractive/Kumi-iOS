//
//  LayerStyleSet+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON
import QuartzCore

public extension LayerStyleSet {
    
    init(json: JSON) {

        self.init(normal: LayerStyle(json: json["normal"].kumiValue),
                  highlighted: LayerStyle(json: json["highlighted"].kumiValue),
                  focused: LayerStyle(json: json["focused"].kumiValue),
                  selected: LayerStyle(json: json["selected"].kumiValue),
                  disabled: LayerStyle(json: json["disabled"].kumiValue))
    }
    
    init(json: JSON, defaultLayerStyle: LayerStyle) {
        let layerNormal = LayerStyle(json: json["normal"].kumiValue)
        self.init(normal: layerNormal,
                  highlighted: LayerStyle(json: json["highlighted"].kumiValue),
                  focused: LayerStyle(json: json["focused"].kumiValue),
                  selected: LayerStyle(json: json["selected"].kumiValue),
                  disabled:  LayerStyle(json: json["disabled"].kumiValue))
    }
    
}

