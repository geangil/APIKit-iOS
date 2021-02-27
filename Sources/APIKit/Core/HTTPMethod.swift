//
//  File.swift
//  
//
//  Created by Emerson Carpes on 23/04/20.
//

import Foundation

enum HTTPMethod: String {
    case options
    case get
    case head
    case post
    case put
    case patch
    case delete
    case trace
    case connect
    
    var name: String {
        return self.rawValue.uppercased()
    }
}
