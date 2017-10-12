//
//  MarkdownElement.swift
//  Marker
//
//  Created by Htin Linn on 5/1/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

/// Markdown element.
///
/// - em: Emphasis element.
/// - strong: Strong element.
/// - strikethrough: Strikethrough element.
/// - underline: Underline element.
internal enum MarkdownElement {
    
    case em(Range<Index>)
    case strong(Range<Index>)
    case strikethrough(Range<Index>)
    case underline(Range<Index>)
    
    /// Range of characters that the elements apply to.
    var range: Range<Index> {
        switch self {
        case .em(let range):
            return range
        case .strong(let range):
            return range
        case .strikethrough(let range):
            return range
        case .underline(let range):
            return range
        }
    }

}
