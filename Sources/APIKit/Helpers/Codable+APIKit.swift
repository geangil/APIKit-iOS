//
//  File.swift
//  
//
//  Created by Emerson Carpes on 17/04/20.
//

import Foundation

extension KeyedDecodingContainer {

    public func decodeBool(forKey key: KeyedDecodingContainer<K>.Key) throws -> Bool {
        do {
            let aux = try decode(Int.self, forKey: key)
            return aux == 1
        } catch {
            return try decode(Bool.self, forKey: key)
        }
    }

    public func decodeOptionalBool(forKey key: KeyedDecodingContainer<K>.Key) throws -> Bool? {
        do {
            let aux = try? decode(Int.self, forKey: key)
            if let _ = aux {
                return aux == Optional(1)
            } else {
                return try? decode(Bool.self, forKey: key)
            }
        }
    }

}
