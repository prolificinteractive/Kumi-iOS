//
//  MarkerTextField.swift
//  Marker
//
//  Created by Htin Linn on 5/4/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

import UIKit

public extension UITextField {

    /**
     Sets the text field text to an attributed string created from the specified string and text style.

     - parameter text:      The text to be displayed in the text field.
     - parameter textStyle: Text style object containing style information.
     */
    func setText(_ text: String, using textStyle: TextStyle) {
        attributedText = NSAttributedString(string: text, textStyle: textStyle)
    }

    /**
     Sets the text field text to an attributed string created from the specified string and text style.
     This function treats the specified string as a Markdown formatted string and applies appropriate styling to it.
     Refer to MarkerdownParser.Tag for a list of supported Markdown tags.

     - parameter markdownText: The Markdown text to be displayed in the text field.
     - parameter textStyle:    Text style object containing style information.
     */
    func setMarkdownText(_ markdownText: String, using textStyle: TextStyle) {
        do {
            let (parsedString, tags) = try MarkdownParser.parse(markdownText)
            attributedText = attributedMarkdownString(from: parsedString, with: tags, using: textStyle)
        } catch {
            text = markdownText
        }
    }

}
