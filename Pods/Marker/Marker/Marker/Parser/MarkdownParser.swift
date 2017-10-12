//
//  MarkdownParser.swift
//  Marker
//
//  Created by Htin Linn on 5/4/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

/// Simple bare-bones markdown parser.
internal struct MarkdownParser {
    
    /// Parser error.
    ///
    /// - invalidTagSymbol: Tag symbol is not a Markdown symbol.
    enum ParserError: LocalizedError {
        case invalidTagSymbol

        var errorDescription: String? {
            return "Invalid Markdown tag."
        }
    }
    
    // MARK: - Private properties
    
    private static let underscoreEmSymbol = Symbol(rawValue: "_")
    private static let asteriskEmSymbol = Symbol(rawValue: "*")
    private static let underscoreStrongSymbol = Symbol(rawValue: "__")
    private static let asteriskStrongSymbol = Symbol(rawValue: "**")
    private static let tildeStrikethroughSymbol = Symbol(rawValue: "~~")
    private static let equalUnderlineSymbol = Symbol(rawValue: "==")
    
    // MARK: - Static functions
    
    /// Parses specified string and returns a tuple containing string stripped of tag characters and an array of Markdown elements.
    ///
    /// - Parameter string: String to be parsed.
    /// - Returns: Tuple containing string stripped of tag characters and an array of Markdown elements.
    /// - Throws: Parser error.
    static func parse(_ string: String) throws -> (strippedString: String, elements: [MarkdownElement]) {
        guard
            let underscoreEmSymbol = underscoreEmSymbol,
            let asteriskEmSymbol = asteriskEmSymbol,
            let underscoreStrongSymbol = underscoreStrongSymbol,
            let asteriskStrongSymbol = asteriskStrongSymbol,
            let tildeStrikethroughSymbol = tildeStrikethroughSymbol,
            let equalUnderlineSymbol = equalUnderlineSymbol else {
                return (string, [])
        }
        
        func transformToMarkdownElement(_ element: Element) throws -> MarkdownElement {
            switch element.symbol {
            case underscoreEmSymbol, asteriskEmSymbol:
                return .em(element.range)
            case underscoreStrongSymbol, asteriskStrongSymbol:
                return .strong(element.range)
            case tildeStrikethroughSymbol:
                return .strikethrough(element.range)
            case equalUnderlineSymbol:
                return .underline(element.range)
            default:
                throw ParserError.invalidTagSymbol
            }
        }
        
        let (strippedString, elements) = try ElementParser.parse(string,
                                                                 for: [underscoreEmSymbol,
                                                                       asteriskEmSymbol,
                                                                       underscoreStrongSymbol,
                                                                       asteriskStrongSymbol,
                                                                       tildeStrikethroughSymbol,
                                                                       equalUnderlineSymbol])
        return try (strippedString, elements.map(transformToMarkdownElement))
    }
    
}
