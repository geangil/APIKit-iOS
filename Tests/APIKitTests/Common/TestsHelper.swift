//
//  File.swift
//  
//
//  Created by Emerson Carpes on 03/05/20.
//

import Foundation

class TestsHelper {
    static func jsonDataFromString(string: String) -> Data {
        guard let data = string.data(using: .utf8) else {
            fatalError("Unable to convert UnitTestData.json to Data")
        }
        return data
    }
    
    static func decode<T>(data: Data, as type: T.Type) throws -> T? where T: Decodable {
        let decoder = JSONDecoder.init()
        let object = try? decoder.decode(T.self, from: data)
        return object
    }
}
