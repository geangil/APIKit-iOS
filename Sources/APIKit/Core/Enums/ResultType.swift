//
//  File.swift
//  
//
//  Created by Emerson Carpes on 04/05/20.
//

import Foundation

/// Response type is returned from a completed request.
public enum ResultType<Value> {

    /// Success result with typed object.
    case success(Value)

    /// Errored request with the error.
    case error(Error, object: Any?)
}
