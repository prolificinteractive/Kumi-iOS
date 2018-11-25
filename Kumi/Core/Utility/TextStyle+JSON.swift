//
//  TextStyle+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker
import SwiftyJSON

private extension TextTransform {

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

private extension NSTextAlignment {

    static func fromString(string: String) -> NSTextAlignment? {
        switch string {
        case "left":
            return NSTextAlignment.left
        case "center":
            return NSTextAlignment.center
        case "right":
            return NSTextAlignment.right
        default:
            return nil
        }
    }

}

private extension NSLineBreakMode {

    static func fromString(string: String) -> NSLineBreakMode {
        switch string {
        case "byWordWrapping":
            return .byWordWrapping
        case "byCharWrapping":
            return .byCharWrapping
        case "byClipping":
            return .byClipping
        case "byTruncatingHead":
            return .byTruncatingHead
        case "​​byTruncatingTail":
            return .byTruncatingTail
        case "byTruncatingMiddle":
            return .byTruncatingMiddle
        default:
            return .byWordWrapping
        }
    }
}

private extension NSUnderlineStyle {

    static func fromString(string: String) -> NSUnderlineStyle? {
        switch string {
        case "none":
            #if swift(>=4.2)
            return nil
            #else
            return .styleNone
            #endif
        case "single":
            #if swift(>=4.2)
            return .single
            #else
            return .styleSingle
            #endif
        case "thick":
            #if swift(>=4.2)
            return .thick
            #else
            return .styleThick
            #endif
        case "double":
            #if swift(>=4.2)
            return .double
            #else
            return .styleDouble
            #endif
        case "patternSolid":
            #if swift(>=4.2)
            return nil
            #else
            return .patternSolid
            #endif
        case "patternDot":
            return .patternDot
        case "patternDash":
            return .patternDash
        case "patternDashDot":
            return .patternDashDot
        case "patternDashDotDot":
            return .patternDashDotDot
        case "byWord":
            return .byWord
        default:
            return nil
        }
    }
}

extension TextStyleSet {
    
    init(json: JSON) {
        let normal = TextStyle(json: json["regular"]) 
        self.init(normal: normal,
                  strong: TextStyle(json: json["strong"]),
                  emphasis: TextStyle(json: json["emphasis"]))
    }
    
    init(json: JSON, defaultStyle: TextStyle) {
        self.init(normal: TextStyle(json: json["regular"]) ,
                  strong: TextStyle(json: json["strong"]),
                  emphasis: TextStyle(json: json["emphasis"]))
    }
    
}

extension TextStyle {

    init(json: JSON) {
        
        let textSize = json["textSize"].kumiCGFloat ?? 16
        let fontNameJSON = json["font"].kumiString ?? ""

        let font = Font(name: fontNameJSON, size: textSize) ?? .systemFont(ofSize: textSize)

        let emFont = font
        let strongFont = font
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


        
        textColor = (json["color"].kumiValue as? UIColor) ?? UIColor(json: json["color"])
        
        characterSpacing = json["letterSpacing"].kumiCGFloat
        
        lineSpacing = json["lineSpacing"].kumiCGFloat

        lineHeightMultiple = json["lineHeightMultiple"].kumiCGFloat

        minimumLineHeight = json["minimumLineHeight"].kumiCGFloat
        
        maximumLineHeight = json["maximumLineHeight"].kumiCGFloat

        paragraphSpacing = json["paragraphSpacing"].kumiCGFloat
        
        paragraphSpacingBefore = json["paragraphSpacingBefore"].kumiCGFloat
        
        if let textAlignmentString = json["textAlign"].kumiString {
            textAlignment = NSTextAlignment.fromString(string: textAlignmentString)
        }

        if let lineBreakModeString = json["lineBreakMode"].kumiString {
            lineBreakMode = NSLineBreakMode.fromString(string: lineBreakModeString)
        }

        if let strikethroughStyleString = json["strikethroughStyle"].kumiString {
            strikethroughStyle = NSUnderlineStyle.fromString(string: strikethroughStyleString)
        }

        if let transform = json["textTransform"].kumiString {
            textTransform = TextTransform(string: transform)
        }

        strikethroughColor = UIColor(json: json["textDecorationColor"] )
        
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
