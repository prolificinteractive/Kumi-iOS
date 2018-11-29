//
//  Generics.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 25/11/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

public final class Generics {
    
    private var json: JSON
    
    public var colors: ColorTheme!
    public var texts: FontTheme!
    public var layers: LayerTheme!
    public var animations: AnimationTheme!
    
    init(json: JSON) {
        self.json = json
        colors = ColorTheme(json: json["colors"])
        texts = FontTheme(json: json["texts"])
        layers = LayerTheme(json: json["layers"])
        animations = AnimationTheme(json: json["animations"])
    }
    
    public subscript(path: JSONSubscriptType) -> JSON {
        return json[path]
    }
}
