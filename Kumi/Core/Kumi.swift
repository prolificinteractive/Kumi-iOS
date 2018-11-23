//
//  Theme.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import SwiftyJSON

public struct Kumi {
    
    // private section
    
    /// Color theme object.
    fileprivate static var _color = ColorTheme(json: JSON({}))
    
    /// Font theme object.
    fileprivate static var _font = FontTheme(json: JSON({}))
    
    /// Layer theme object.
    fileprivate static var _layer = LayerTheme(json: JSON({}))
    
    /// Animation theme object.
    fileprivate static var _animation = AnimationTheme(json: JSON({}))
    
    /// Shadow theme object.
    fileprivate static var _shadow = ShadowTheme(json: JSON({}))
    
    /// Constant object
    fileprivate static var _constant = Constant(json: JSON({}))
    
    // public
    
    public static var color: ColorTheme {
        return _color
    }
    
    public static var font: FontTheme {
        return _font
    }
    
    public static var layer: LayerTheme {
        return _layer
    }
    
    public static var animation: AnimationTheme {
        return _animation
    }
    
    public static var shadow: ShadowTheme {
        return _shadow
    }
    
    public static var constant: Constant {
        return _constant
    }
    
    // Use `Kumi.setup()` at `AppDelegate` or before use.
    public static func setup() {
        setup(bundle: Bundle.main)
    }
    
    public static func setup(bundle: Bundle) {
        setup(withFilePaths: bundle.paths(forResourcesOfType: "json", inDirectory: nil))
    }
    
    public static func setup(withFilePaths paths: [String]) {
        setup(withJSONs: paths.compactMap { JSONHelper.readJSON(path: $0) }.filter { !$0["kumi"].isEmpty })
    }
    
    @available(*, deprecated, message: "This is old json pattern")
    public static func setup(withJSONs jsons: [JSON]) {
        for json in jsons {
            switch json["kumi"]["type"].stringValue {
            case "color":
                _color = ColorTheme(json: json)
            case "font":
                _font = FontTheme(json: json)
            case "layer":
                _layer = LayerTheme(json: json)
            case "animation":
                _animation = AnimationTheme(json: json)
            case "shadow":
                _shadow = ShadowTheme(json: json)
            case "constant":
                _constant = Constant(json: json)
            default: break
            }
        }
    }
    
    public static func setup(withJSON json: JSON) {
        let j = json["json"]
        _color = ColorTheme(json: j["color"])
        _font = FontTheme(json: j["text"])
        _layer = LayerTheme(json: j["layer"])
        _animation = AnimationTheme(json: j["animation"])
        _shadow = ShadowTheme(json: j["shadow"])
        _constant = Constant(json: j["constant"])
    }
}
