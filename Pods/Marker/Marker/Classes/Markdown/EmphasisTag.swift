//
//  EmphasisTag.swift
//  Marker
//
//  Created by Htin Linn on 5/11/16.
//  Copyright © 2016 Prolific Interactive. All rights reserved.
//

/**
 Emphasis tag.

 - AsteriskEm:       Em tag denoted with an asterisk.
 - UnderscoreEm:     Em tag denoted with an underscore.
 - AsteriskStrong:   Strong tag denoted with an asterisk.
 - UnderscoreStrong: Strong tag denoted with an underscore.
 */
internal enum EmphasisTag {

    case asteriskEm(Index)
    case underscoreEm(Index)
    case asteriskStrong(Index)
    case underscoreStrong(Index)
    case tildeStrikethrough(Index)

    /**
     *  Emphasis tag constants.
     */
    struct Constants {
        static let emTagLength = 1
        static let strongTagLength = 2
        static let strikethroughTagLength = 2
    }

    /**
     *  Emphasis tag parser.
     */
    struct Parser {

        /**
         Parses and returns an array of emphasis tags.

         - parameter string: String to be parsed.

         - returns: Array of emphasis tags.
         */
        static func parse(_ string: String) -> [EmphasisTag] {
            var emphasisTags: [EmphasisTag] = []

            var i = 0
            var offset = 0
            var previousIndex = string.startIndex

            while i < string.characters.count {
                let index = string.characters.index(previousIndex, offsetBy: offset)

                let character: Character? = string[index]
                let precedingCharacter: Character? = (i > 0) ? string[string.characters.index(before: index)] : nil
                let succeedingCharacter: Character? = (i + 1 < string.characters.count) ?
                    string[string.characters.index(after: index)] : nil

                switch (precedingCharacter, character, succeedingCharacter) {
                case (.some(" "), .some("*"), .some(" ")), (.some(" "), .some("_"), .some(" ")):
                    offset = 1
                case (_, .some("*"), .some("*")):
                    emphasisTags.append(.asteriskStrong(index))
                    offset = Constants.strongTagLength
                case (_, .some("_"), .some("_")):
                    emphasisTags.append(.underscoreStrong(index))
                    offset = Constants.strongTagLength
                case (_, .some("*"), _):
                    emphasisTags.append(.asteriskEm(index))
                    offset = Constants.emTagLength
                case (_, .some("_"), _):
                    emphasisTags.append(.underscoreEm(index))
                    offset = Constants.emTagLength
                case (_, .some("~"), .some("~")):
                    emphasisTags.append(.tildeStrikethrough(index))
                    offset = Constants.strikethroughTagLength
                default:
                    offset = 1
                }

                i = i + offset
                previousIndex = index
            }

            return emphasisTags
        }

    }

}
