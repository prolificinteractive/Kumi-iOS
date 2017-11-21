//
//  LayerStyleSet+JSON.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 17/11/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

public extension LayerStyleSet {
    
    init?(json: Any?) {
        guard let json = json as? JSON? else {
            return nil
        }
        self.init(json: json)
    }
    
    init?(json: Any?, defaultLayerStyle: LayerStyle) {
        guard let json = json as? JSON? else {
            return nil
        }
        self.init(json: json, defaultLayerStyle: defaultLayerStyle)
    }
    
    init?(json: JSON?) {
        guard let json = json else {
            return nil
        }
        self.init(normal: LayerStyle(json: json["normal"])!,
                  highlighted: LayerStyle(json: json["highlighted"]),
                  focused: LayerStyle(json: json["focused"]),
                  selected: LayerStyle(json: json["selected"]),
                  disabled: LayerStyle(json: json["disabled"]))
    }
    
    init?(json: JSON?, defaultLayerStyle: LayerStyle) {
        guard let json = json else {
            return nil
        }
        let layerNormal = LayerStyle(json: json["normal"]) ?? defaultLayerStyle
        self.init(normal: layerNormal,
                  highlighted: LayerStyle(json: json["highlighted"]),
                  focused: LayerStyle(json: json["focused"]),
                  selected: LayerStyle(json: json["selected"]),
                  disabled: LayerStyle(json: json["disabled"]))
    }
    
}

