//
//  Theme.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

public typealias JSON = [String: Any]

public struct Theme {
    let colorTheme: ColorTheme
    //    let fontTheme =  FontTheme()
    //    let layerTheme = LayerTheme()
    //    let animationTheme = AnimationTheme()

    public init?(json: JSON) {
        guard let themeJSON = json["theme"] as? JSON else {
            return nil
        }

        guard let colorJSON = themeJSON["color"] as? JSON else {
            return nil
        }

        guard let colorTheme = ColorTheme(json: colorJSON) else {
            return nil
        }

        self.colorTheme = colorTheme
    }

}
