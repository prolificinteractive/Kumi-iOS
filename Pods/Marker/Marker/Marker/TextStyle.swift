//
//  TextStyle.swift
//  Marker
//
//  Created by Htin Linn on 5/4/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#elseif os(macOS) || os(OSX)
    import AppKit
#endif

/// Encapsulates style information to be applied when displaying text.
public struct TextStyle {
    
    // MARK: - Properties

    /// Font for displaying regular text.
    public var font: Font
    
    /// Font for displaying emphasized text.
    public var emFont: Font
    
    /// Font for displaying important text.
    public var strongFont: Font
    
    /// Text color.
    public var textColor: Color?
    
    /// Character spacing/kerning.
    public var characterSpacing: CGFloat?

    /// Line spacing.
    public var lineSpacing: CGFloat?

    /// Line height multiple.
    public var lineHeightMultiple: CGFloat?
    
    /// Minimum line height.
    public var minimumLineHeight: CGFloat?
    
    /// Maximum line height.
    public var maximumLineHeight: CGFloat?
    
    /// Indentation of the first line of a paragraph.
    public var firstLineHeadIndent: CGFloat?
    
    /// Indentation of the lines of the paragraph other than the first line.
    public var headIndent: CGFloat?
    
    /// Paragraph spacing.
    public var paragraphSpacing: CGFloat?

    /// Paragraph spacing before.
    public var paragraphSpacingBefore: CGFloat?
    
    /// Text alignment.
    public var textAlignment: NSTextAlignment?
    
    /// Line break mode.
    public var lineBreakMode: LineBreakMode?
    
    /// Underline style for strikethrough text.
    public var strikethroughStyle: NSUnderlineStyle?
    
    /// Stroke color for strikethough text.
    public var strikethroughColor: Color?

    /// Underline style for underlined text.
    public var underlineStyle: NSUnderlineStyle?

    /// Stroke color for underlined text.
    public var underlineColor: Color?
    
    /// Text transform.
    public var textTransform: TextTransform
    
    // MARK: - Computed properties
    
    /// Text attribute dictionary representation of the receiver.
    /// NOTE: This variable does not include attributes that only apply to ranges such as `emFont`, `strikethroughStyle`, etc.
    public var attributes: TextAttributes {
        var attributes: TextAttributes = [:]
        

        attributes[AttributedStringKey.font] = font
        attributes[AttributedStringKey.foregroundColor] = textColor
        attributes[AttributedStringKey.kern] = characterSpacing as NSObject?
        
        
        let paragraphStyle = NSMutableParagraphStyle()
        
        if let lineSpacing = lineSpacing {
            paragraphStyle.lineSpacing = lineSpacing
        }
        if let lineHeightMultiple = lineHeightMultiple {
            paragraphStyle.lineHeightMultiple = lineHeightMultiple
        }
        if let minimumLineHeight = minimumLineHeight {
            paragraphStyle.minimumLineHeight = minimumLineHeight
        }
        if let maximumLineHeight = maximumLineHeight {
            paragraphStyle.maximumLineHeight = maximumLineHeight
        }
        
        if let firstLineHeadIndent = firstLineHeadIndent {
            paragraphStyle.firstLineHeadIndent = firstLineHeadIndent
        }
        if let headIndent = headIndent {
            paragraphStyle.headIndent = headIndent
        }
        
        if let paragraphSpacing = paragraphSpacing {
            paragraphStyle.paragraphSpacing = paragraphSpacing
        }
        if let paragraphSpacingBefore = paragraphSpacingBefore {
            paragraphStyle.paragraphSpacingBefore = paragraphSpacingBefore
        }
        
        if let alignment = textAlignment {
            paragraphStyle.alignment = alignment
        }
        
        if let lineBreakMode = lineBreakMode {
            paragraphStyle.lineBreakMode = lineBreakMode
        }
        
        attributes[AttributedStringKey.paragraphStyle] = paragraphStyle
        
        return attributes
    }
    
    // MARK: - Init/Deinit
    
    /**
     Initializes a text style object with given parameters.
     
     - parameter font:                   Regualar font.
     - parameter emFont:                 Emphasis font.
     - parameter strongFont:             Strong font.
     - parameter textColor:              Text color.
     - parameter characterSpacing:       Character spacing (kerning).
     - parameter lineSpacing:            Line spacing.
     - parameter lineHeightMultiple:     Line height mulitple.
     - parameter minimumLineHeight:      Minimum line height.
     - parameter maximumLineHeight:      Maximum line height.
     - parameter paragraphSpacing:       Paragraph spacing.
     - parameter paragraphSpacingBefore: Paragraph spacing before.
     - parameter textAlignment:          Text alignment.
     - parameter lineBreakMode:          Line break node.
     - parameter strikethroughStyle:     Strikethrough style.
     - parameter strikethroughColor:     Strikethrough color.
     - parameter underlineStyle:         Underline style.
     - parameter underlineColor:         Underline color.
     - parameter textTransform:          Text transform option.
     
     - returns: An initialized text style object.
     */
    public init(font: Font,
                emFont: Font? = nil,
                strongFont: Font? = nil,
                textColor: Color? = nil,
                characterSpacing: CGFloat? = nil,
                lineSpacing: CGFloat? = nil,
                lineHeightMultiple: CGFloat? = nil,
                minimumLineHeight: CGFloat? = nil,
                maximumLineHeight: CGFloat? = nil,
                firstLineHeadIndent: CGFloat? = nil,
                headIndent: CGFloat? = nil,
                paragraphSpacing: CGFloat? = nil,
                paragraphSpacingBefore: CGFloat? = nil,
                textAlignment: NSTextAlignment? = nil,
                lineBreakMode: LineBreakMode? = nil,
                strikethroughStyle: NSUnderlineStyle? = nil,
                strikethroughColor: Color? = nil,
                underlineStyle: NSUnderlineStyle? = nil,
                underlineColor: Color? = nil,
                textTransform: TextTransform = .none) {
        self.font = font
        self.emFont = (emFont == nil) ? font : emFont!
        self.strongFont = (strongFont == nil) ? font : strongFont!
        self.textColor = textColor
        self.characterSpacing = characterSpacing
        self.lineSpacing = lineSpacing
        self.firstLineHeadIndent = firstLineHeadIndent
        self.headIndent = headIndent
        self.lineHeightMultiple = lineHeightMultiple
        self.minimumLineHeight = minimumLineHeight
        self.maximumLineHeight = maximumLineHeight
        self.paragraphSpacing = paragraphSpacing
        self.paragraphSpacingBefore = paragraphSpacingBefore
        self.textAlignment = textAlignment
        self.lineBreakMode = lineBreakMode
        self.strikethroughStyle = strikethroughStyle
        self.strikethroughColor = strikethroughColor
        self.underlineStyle = underlineStyle
        self.underlineColor = underlineColor
        self.textTransform = textTransform
    }
}
