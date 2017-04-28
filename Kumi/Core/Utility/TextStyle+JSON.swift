//
//  TextStyle+JSON.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation
import Marker

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

    static func fromString(string: String) -> NSLineBreakMode? {
        switch string {
        case "byWordWrapping":
            return NSLineBreakMode.byWordWrapping
        case "byCharWrapping":
            return NSLineBreakMode.byCharWrapping
        case "byClipping":
            return NSLineBreakMode.byClipping
        case "byTruncatingHead":
            return NSLineBreakMode.byTruncatingHead
        case "by​Truncating​Tail":
            return NSLineBreakMode.byTruncatingTail
        case "byTruncatingMiddle":
            return NSLineBreakMode.byTruncatingMiddle
        default:
            return nil
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
        // TODO: How do we get the color information from the JSON?
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

        if let lineHeight = json["lineHeightMultiple"] as? CGFloat {
            lineHeightMultiple = lineHeight
        }

        if let minLineHeight = json["minimumLineHeight"] as? CGFloat {
            minimumLineHeight = minLineHeight
        }

        if let maxLineHeight = json["maximumLineHeight"] as? CGFloat {
            maximumLineHeight = maxLineHeight
        }

        if let paragraphSpace = json["paragraphSpacing"] as? CGFloat {
            paragraphSpacing = paragraphSpace
        }

        if let paragraphSpaceBefore = json["paragraphSpacingBefore"] as? CGFloat {
            paragraphSpacingBefore = paragraphSpaceBefore
        }

        if let textAlignmentString = json["textAlign"] as? String,
            let textAlign = NSTextAlignment.fromString(string: textAlignmentString) {
            textAlignment = textAlign
        }

        if let lineBreakModeString = json["lineBreakMode"] as? String,
            let lineBrkMode = NSLineBreakMode.fromString(string: lineBreakModeString) {
            lineBreakMode = lineBrkMode
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
