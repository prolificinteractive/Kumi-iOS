//
//  TextAttributes.swift
//  Marker
//
//  Created by Htin Linn on 9/20/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS) || os(OSX)
    import AppKit
#endif

#if swift(>=4.0)
    /// Text attributes.
public typealias TextAttributes = [NSAttributedString.Key: Any]

    struct AttributedStringKey {

        static let font = NSAttributedString.Key.font
        static let foregroundColor = NSAttributedString.Key.foregroundColor
        static let kern = NSAttributedString.Key.kern
        static let link = NSAttributedString.Key.link
        static let paragraphStyle = NSAttributedString.Key.paragraphStyle
        static let strikethroughStyle = NSAttributedString.Key.strikethroughStyle
        static let strikethroughColor = NSAttributedString.Key.strikethroughColor
        static let underlineStyle = NSAttributedString.Key.underlineStyle
        static let underlineColor = NSAttributedString.Key.underlineColor

    }
#else
    /// Text attributes.
    public typealias TextAttributes = [String: Any]

    internal struct AttributedStringKey {

        static let font = NSFontAttributeName
        static let foregroundColor = NSForegroundColorAttributeName
        static let kern = NSKernAttributeName
        static let link = NSLinkAttributeName
        static let paragraphStyle = NSParagraphStyleAttributeName
        static let strikethroughStyle = NSStrikethroughStyleAttributeName
        static let strikethroughColor = NSStrikethroughColorAttributeName
        static let underlineStyle = NSUnderlineStyleAttributeName
        static let underlineColor = NSUnderlineColorAttributeName
        
    }
#endif
