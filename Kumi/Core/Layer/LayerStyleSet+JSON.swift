//
//  LayerStyleSet+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON

public extension LayerStyleSet {
    
    init(json: JSON) {

        self.init(normal: (json["normal"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["normal"]),
                  highlighted:  (json["highlighted"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["highlighted"]),
                  focused: (json["focused"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["focused"]),
                  selected: (json["selected"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["selected"]),
                  disabled: (json["disabled"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["disabled"]))
    }
    
    init(json: JSON, defaultLayerStyle: LayerStyle) {
        let layerNormal = (json["normal"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["normal"])
        self.init(normal: layerNormal,
                  highlighted: (json["highlighted"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["highlighted"]),
                  focused: (json["focused"].kumiValue as? LayerStyle) ?? LayerStyle(json: json["focused"]),
                  selected: (json["selected"].kumiValue as? LayerStyle) ??  LayerStyle(json: json["selected"]),
                  disabled: (json["disabled"].kumiValue as? LayerStyle) ??  LayerStyle(json: json["disabled"]))
    }
    
}

