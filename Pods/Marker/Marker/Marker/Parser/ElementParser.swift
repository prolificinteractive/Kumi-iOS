//
//  ElementParser.swift
//  Marker
//
//  Created by Htin Linn on 5/8/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

/// Markup element parser.
internal struct ElementParser {
    
    /// Parser error.
    ///
    /// - tagMismatch: Opening tag doesn't match closing tag.
    /// - unclosedTags: A tag was left unclosed.
    enum ParserError: LocalizedError {

        case tagMismatch
        case unclosedTags

        var errorDescription: String? {
            switch self {
            case .tagMismatch:
                return "Opening tag doesn't match closing tag."
            case .unclosedTags:
                return "A tag was left unclosed."
            }
        }

    }
    
    // MARK: - Static functions
    
    /// Parses specified string and returns a tuple containing string stripped of tag characters and an array of markup elements.
    ///
    /// - Parameters:
    ///   - string: String to be parsed.
    ///   - symbols: Symbols to parse for.
    /// - Returns: Tuple containing string stripped of tag characters and an array of markup elements.
    /// - Throws: Parser error.
    static func parse(_ string: String, for symbols: [Symbol]) throws -> (strippedString: String, elements: [Element]) {
        let parser = TagParser(symbols: symbols)
        let tags = parser.parse(string)
        
        guard tags.count > 0 else {
            return (string, [])
        }
        guard tags.count % 2 == 0 else {
            throw ParserError.unclosedTags
        }

        var strippedString: String = ""
        var elements: [Element] = []

        var startIndex: Index = string.startIndex
        for i in stride(from: 0, to: tags.count, by: 2) {
            let openingTag = tags[i]
            let closingTag = tags[i + 1]
            
            if openingTag.symbol != closingTag.symbol {
                throw ParserError.tagMismatch
            }
            
            // Add the text from the last closing tag to the current opening tag.
            strippedString += string[startIndex..<openingTag.index]
            
            let elementStartIndex = strippedString.endIndex
            // Add the text that is in between the opening and closing tags.
            strippedString += string[string.index(openingTag.index, offsetBy: openingTag.symbol.length)..<closingTag.index]
            let elementEndIndex = strippedString.endIndex
            
            // Create an element that would apply to the new string.
            elements.append(Element(symbol: openingTag.symbol, range: elementStartIndex..<elementEndIndex))
            
            // Update the start index for the next iteration.
            startIndex = string.index(closingTag.index, offsetBy: closingTag.symbol.length)
        }
        
        // Add from the last closing tag to the end of the string.
        strippedString += string[startIndex..<string.endIndex]
        
        return (strippedString, elements)
    }
    
}
