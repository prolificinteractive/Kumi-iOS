//
//  MarkdownString.swift
//  Marker
//
//  Created by Htin Linn on 5/4/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import Foundation

/**
 Returns formatted Markdown text as an attributed string.

 - parameter parsedString: String stripped of markup.
 - parameter tags:         Mark up tags.
 - parameter textStyle:    Text style object containing markup font.

 - returns: Formatted markdown text.
 */
internal func attributedMarkdownString(from parsedString: String, with tags: [MarkdownTag], using textStyle: TextStyle) -> NSAttributedString {
    let attributedString = NSMutableAttributedString(string: textStyle.textTransform.apply(to: parsedString))

    attributedString.addAttributes(textStyle.attributes,
                                   range: NSRange(location: 0, length: parsedString.characters.count))

    for tag in tags {
        var font: UIFont? = nil
        var strikethroughStyle: NSUnderlineStyle? = nil

        switch tag {
        case .em(_):
            font = textStyle.emFont
        case .strong(_):
            font = textStyle.strongFont
        case .strikethrough(_):
            strikethroughStyle = textStyle.strikethroughStyle
        }

        if let font = font {
            attributedString.addAttributes([NSFontAttributeName: font], range: parsedString.range(from: tag.range()))
        }

        if let strikethroughStyle = strikethroughStyle {
            attributedString.addAttributes([NSStrikethroughStyleAttributeName: strikethroughStyle.rawValue],
                                           range: parsedString.range(from: tag.range()))

            if let strikethroughColor = textStyle.strikethroughColor {
                attributedString.addAttributes([NSStrikethroughColorAttributeName: strikethroughColor],
                                               range: parsedString.range(from: tag.range()))
            }
        }
    }

    return attributedString
}

// Source: http://stackoverflow.com/questions/25138339/nsrange-to-rangestring-index/30404532#30404532
private extension String {

    func range(from range: Range<String.Index>) -> NSRange {
        let from = String.UTF16View.Index(range.lowerBound, within: utf16)
        let to = String.UTF16View.Index(range.upperBound, within: utf16)

        return NSRange(location: utf16.distance(from: utf16.startIndex, to: from), length: utf16.distance(from: from, to: to))
    }

}
