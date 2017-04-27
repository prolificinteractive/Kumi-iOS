//
//  MarkdownTag.swift
//  Marker
//
//  Created by Htin Linn on 5/11/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

internal typealias Index = String.CharacterView.Index

/**
 Markdown tag.

 - Em:     Em tag.
 - Strong: Strong tag.
 */
internal enum MarkdownTag {

    case em(Range<Index>)
    case strong(Range<Index>)
    case strikethrough(Range<Index>)

    /**
     Parser error.

     - TagMismatch:  Opening tag doesn't match closing tag.
     - UnclosedTags: A tag was left unclosed.
     */
    enum ParserError: Error {
        case tagMismatch
        case unclosedTags
    }

    /**
     *  Markdown tag parser.
     */
    struct Parser {

        static func parse(_ string: String) throws -> [MarkdownTag] {
            let emphasisTags = try parseEmphasisTags(string)
            return emphasisTags
        }

        // MARK: - Private functions

        /**
         Parses and converts emphasis tags into Markdown tags.

         - parameter string: String to be parsed.

         - throws: Parser error.

         - returns: Array of Markdown tags.
         */
        private static func parseEmphasisTags(_ string: String) throws -> [MarkdownTag] {
            let emphasisTags = EmphasisTag.Parser.parse(string)

            guard emphasisTags.count % 2 == 0 else {
                throw ParserError.unclosedTags
            }

            var tags: [MarkdownTag] = []
            for i in stride(from: 0, to: emphasisTags.count, by: 2) {
                let openingTag = emphasisTags[i]
                let closingTag = emphasisTags[i+1]

                switch (openingTag, closingTag) {
                case let (.asteriskEm(openingIndex), .asteriskEm(closingIndex)):
                    tags.append(.em(openingIndex..<closingIndex))
                case let (.underscoreEm(openingIndex), .underscoreEm(closingIndex)):
                    tags.append(.em(openingIndex..<closingIndex))
                case let (.asteriskStrong(openingIndex), .asteriskStrong(closingIndex)):
                    tags.append(.strong(openingIndex..<closingIndex))
                case let (.underscoreStrong(openingIndex), .underscoreStrong(closingIndex)):
                    tags.append(.strong(openingIndex..<closingIndex))
                case let (.tildeStrikethrough(openingIndex), .tildeStrikethrough(closingIndex)):
                    tags.append(.strikethrough(openingIndex..<closingIndex))
                default:
                    throw ParserError.tagMismatch
                }

            }

            return tags
        }

    }

    // MARK: - Instance functions

    /**
     Creates and returns a new MarkdownTag enum of the same type with specified range.

     - parameter range: New range.

     - returns: New MarkdownTag enum of the same type with specified range.
     */
    func replacingRange(with range: Range<Index>) -> MarkdownTag {
        switch self {
        case .em(_):
            return .em(range)
        case .strong(_):
            return .strong(range)
        case .strikethrough(_):
            return .strikethrough(range)
        }
    }

    /**
     Returns range that the receiver applies to.

     - returns: Range that the receiver applies to.
     */
    func range() -> Range<Index> {
        switch self {
        case .em(let range):
            return range
        case .strong(let range):
            return range
        case .strikethrough(let range):
            return range
        }
    }

    /**
     Returns length of the opening tag characters.

     - returns: Length of the opening tag characters.
     */
    func openingTagLength() -> Int {
        switch self {
        case .em(_):
            return EmphasisTag.Constants.emTagLength
        case .strong(_):
            return EmphasisTag.Constants.strongTagLength
        case .strikethrough(_):
            return EmphasisTag.Constants.strikethroughTagLength
        }
    }

    /**
     Returns length of the closing tag characters.

     - returns: Length of the closing tag characters.
     */
    func closingTagLength() -> Int {
        switch self {
        case .em(_):
            return EmphasisTag.Constants.emTagLength
        case .strong(_):
            return EmphasisTag.Constants.strongTagLength
        case .strikethrough(_):
            return EmphasisTag.Constants.strikethroughTagLength
        }
    }

}
