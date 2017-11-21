//
//  JSONHelper.swift
//  Kumi
//
//  Created by Thibault Klein on 4/28/17.
//  Copyright © 2017 Prolific Interactive. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

/// JSON errors
///
/// - jsonFileNotFound: The JSON file was not found.
/// - jsonDeserializationFailed: The JSON deserialization failed.
/// - jsonFormatInvalid: The JSON format is invalid.
enum JSONError: Swift.Error {

    /// Error for the case that a file was not found.
    case jsonFileNotFound(filePath: String)

    /// Error for the case that the JSON serializer failed to parse a data object to JSON.
    case jsonDeserializationFailed(jsonSerializationError: Error, data: Data)

    /// Error for the case that the JSON format was invalid.
    case jsonFormatInvalid(invalidObject: AnyObject)

}

class JSONHelper {

    /**
     Retrieves the JSON data contained in a file named `jsonFileName`.json or nil,
     if there was an error when loading this JSON data. Prints a descriptive error message
     when returning nil.

     - parameter jsonFileName: The name of the file which contains the json data
     without the `.json` file ending.

     - returns: The JSON contained in the respective file or nil, if the loading failed.
     */
    static func testGetJSON(_ jsonFileName: String) -> JSON? {
        do {
            return try JSONHelper.getJSON(jsonFileName)
        } catch {
            switch error {
            case JSONError.jsonDeserializationFailed(let error, let data):
                print("Deserialization failed with error: \(error), with data: \(data)")
            case JSONError.jsonFormatInvalid(let object):
                print("Deserialization format is wrong: \(object)")
            case JSONError.jsonFileNotFound(let fileName):
                print("File not found: \(fileName)")
            default:
                print(error)
            }
            return nil
        }
    }

    /**
     Retrieves the JSON data contained in a file named `jsonFileName`.json.

     - throws: A `JSONError` if anything failed when loading JSON from the file.

     - parameter jsonFileName: The name of the file which contains the json data
     without the `.json` file ending.

     - returns: The JSON contained in the respective file.
     */
    static func getJSON(_ jsonFileName: String) throws -> JSON {
        guard let data = loadJsonFile(jsonFileName) else {
            throw JSONError.jsonFileNotFound(filePath: "\(jsonFileName).json")
        }

        return try deserializeJSON(data)
    }

    /**
     Retrieves the JSON data contained in a file named `jsonFileName`.json.

     - throws: A `JSONError` if anything failed when loading JSON from the file.

     - parameter jsonFileName: The name of the file which contains the json data
     without the `.json` file ending.

     - returns: The JSON contained in the respective file.
     */
    static func getJSONArray(_ jsonFileName: String) throws -> [JSON] {
        guard let data = loadJsonFile(jsonFileName) else {
            throw JSONError.jsonFileNotFound(filePath: "\(jsonFileName).json")
        }

        return try deserializeJSONArray(data)
    }

    /**
     Loads the raw data of a JSON file.

     - parameter name: The file name without `.json` extension

     - returns: The file's data.
     */
    fileprivate static func loadJsonFile(_ name: String) -> Data? {
        let bundle = Bundle(for: JSONHelper.self)
        guard let jsonFileURL = bundle.path(forResource: name, ofType: "json") else {
            return nil
        }
        do {
            let content = try String(contentsOfFile: jsonFileURL)
            return content.data(using: String.Encoding.utf8)
        } catch {
            return nil
        }
    }

    /**
     Deserializes the JSON data to a dictionary.

     - parameter data: The JSON data to be parsed.

     - throws: JSONError object.

     - returns: The JSON structure or nil, if the parsing failed.
     */
    fileprivate static func deserializeJSON(_ data: Data) throws -> JSON {
        do {
            let object =
                try JSONSerialization
                    .jsonObject(with: data,
                                options: JSONSerialization.ReadingOptions.mutableContainers)

            guard let result = object as? JSON else {
                throw JSONError.jsonFormatInvalid(invalidObject: object as AnyObject)
            }

            return result
        } catch {
            throw JSONError.jsonDeserializationFailed(jsonSerializationError: error, data: data)
        }
    }

    /**
     Deserializes the JSON data to an array.

     - parameter data: The JSON data to be parsed.

     - throws: JSONError object.

     - returns: The JSON array structure or nil, if the parsing failed.
     */
    fileprivate static func deserializeJSONArray(_ data: Data) throws -> [JSON] {
        do {
            let object =
                try JSONSerialization
                    .jsonObject(with: data,
                                options: JSONSerialization.ReadingOptions.mutableContainers)

            guard let result = object as? [JSON] else {
                throw JSONError.jsonFormatInvalid(invalidObject: object as AnyObject)
            }

            return result
        } catch {
            throw JSONError.jsonDeserializationFailed(jsonSerializationError: error, data: data)
        }
    }
}
