//
//  File.swift
//  
//
//  Created by Emerson Carpes on 04/05/20.
//

import Foundation

public extension String {
    func stringToURL() -> URL? {
        guard let url = URL(string: self) else {
            return URL(string: addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? "")
        }
        return url
    }
}
