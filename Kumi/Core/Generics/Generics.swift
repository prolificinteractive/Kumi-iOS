//
//  Generics.swift
//  Kumi
//
//  Created by Nattawut Singhchai on 25/11/18.
//  Copyright © 2018 Prolific Interactive. All rights reserved.
//

import SwiftyJSON

public final class Generics {
    
    var colors: ColorTheme!
    var texts: FontTheme!
    var layers: LayerTheme!
    var animations: AnimationTheme!
    
    init(json: JSON) {
        colors = ColorTheme(json: json["colors"])
        texts = FontTheme(json: json["texts"])
        layers = LayerTheme(json: json["layers"])
        animations = AnimationTheme(json: ["animations"])
    }
}
