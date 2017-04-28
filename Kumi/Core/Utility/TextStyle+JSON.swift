//
//  TextStyle+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker

/*
 {
 "fontFamily": "Helvetica",
 "textSize": 18,
 "fontWeight": {
 "normal": "roman/regular",
 "strong": "roman/bold",
 "emphasis": "roman/heavy"
 },
 "color": {
 "$ref": "#/theme/color/primary/normal"
 },
 "letterSpacing": 1,
 "lineSpacing": 0,
 "lineHeightMultiple": 1,
 "minimumLineHeight": 0,
 "maximumLineHeight": 0,
 "paragraphSpacing": 0,
 "paragraphSpacingBefore": 0,
 "textAlign": "left",
 "lineBreakMode": "by​Truncating​Tail",
 "textTransform": "none",
 "textDecorationLine": "none",
 "textDecorationColor": {
 "$ref": "#/theme/color/primary/normal"
 }
 }
 */

extension TextTransform {

    init(string: String) {
        switch string {
        case "none":
            self = .none
        case "lowercased":
            self = .lowercased
        case "uppercased":
            self = .uppercased
        case "capitalized":
            self = .capitalized
        default:
            self = .none
        }
    }

}

extension TextStyle {

    init?(json: JSON) {
        guard let fontName = json["fontFamily"] as? String,
        let textSize = json["textSize"] as? CGFloat else {
            return nil
        }

        guard let font = UIFont(name: fontName, size: textSize) else {
            return nil
        }

        var emFont: UIFont?
        var strongFont: UIFont?
        var textColor: UIColor?
        var characterSpacing: CGFloat?
        var lineSpacing: CGFloat?
        var lineHeightMultiple: CGFloat?
        var minimumLineHeight: CGFloat?
        var maximumLineHeight: CGFloat?
        var paragraphSpacing: CGFloat?
        var paragraphSpacingBefore: CGFloat?
        var textAlignment: NSTextAlignment?
        var lineBreakMode: NSLineBreakMode?
        var strikethroughStyle: NSUnderlineStyle?
        var strikethroughColor: UIColor?
        var textTransform: TextTransform = .none

        if let textColorJSON = json["color"] as? JSON {
            textColor = UIColor(json: textColorJSON)
        }

        if let letterSpacing = json["letterSpacing"] as? CGFloat {
            characterSpacing = letterSpacing
        }

        if let spacing = json["lineSpacing"] as? CGFloat {
            lineSpacing = spacing
        }

        if let transform = json["textTransform"] as? String {
            textTransform = TextTransform(string: transform)
        }

        self.init(font: font,
                  emFont: emFont,
                  strongFont: strongFont,
                  textColor: textColor,
                  characterSpacing: characterSpacing,
                  lineSpacing: lineSpacing,
                  lineHeightMultiple: lineHeightMultiple,
                  minimumLineHeight: minimumLineHeight,
                  maximumLineHeight: maximumLineHeight,
                  paragraphSpacing: paragraphSpacing,
                  paragraphSpacingBefore: paragraphSpacingBefore,
                  textAlignment: textAlignment,
                  lineBreakMode: lineBreakMode,
                  strikethroughStyle: strikethroughStyle,
                  strikethroughColor: strikethroughColor,
                  textTransform: textTransform)
    }

}
