//
//  TextStyle+Factory.swift
//  Kumi
//
//  Created by Thibault Klein on 6/23/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Marker

public extension TextStyle {

    /// Updates text style color.
    ///
    /// - Parameter newColor: New color.
    /// - Returns: The updated text style with the new color.
    public func with(newColor: UIColor?) -> TextStyle {
        return TextStyle(
            font: font,
            emFont: emFont,
            strongFont: strongFont,
            textColor: newColor,
            characterSpacing: characterSpacing,
            lineSpacing: lineSpacing,
            lineHeightMultiple: lineHeightMultiple,
            minimumLineHeight: minimumLineHeight,
            maximumLineHeight: maximumLineHeight,
            paragraphSpacing: paragraphSpacing,
            paragraphSpacingBefore: paragraphSpacingBefore,
            textAlignment: textAlignment,
            lineBreakMode: lineBreakMode
        )
    }

    /// Updates text style color.
    ///
    /// - Parameter newColor: New color.
    /// - Returns: The updated text style with the new color.
    public func with(newFontSize: CGFloat) -> TextStyle {
        return TextStyle(
            font: font.with(newSize: newFontSize),
            emFont: emFont.with(newSize: newFontSize),
            strongFont: strongFont.withSize(newFontSize),
            textColor: textColor,
            characterSpacing: characterSpacing,
            lineSpacing: lineSpacing,
            lineHeightMultiple: lineHeightMultiple,
            minimumLineHeight: minimumLineHeight,
            maximumLineHeight: maximumLineHeight,
            paragraphSpacing: paragraphSpacing,
            paragraphSpacingBefore: paragraphSpacingBefore,
            textAlignment: textAlignment,
            lineBreakMode: lineBreakMode
        )
    }

    /// Updates the text style to use the bold font.
    ///
    /// - Returns: The updated text style with the bold font.
    public func bold() -> TextStyle {
        return TextStyle(
            font: strongFont,
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
            lineBreakMode: lineBreakMode
        )
    }

    /// Updates the text style to use the emphasis font.
    ///
    /// - Returns: The updated text style with the emphasis font.
    public func italic() -> TextStyle {
        return TextStyle(
            font: emFont,
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
            lineBreakMode: lineBreakMode
        )
    }
    
}
