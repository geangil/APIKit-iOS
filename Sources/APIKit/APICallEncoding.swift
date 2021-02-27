//
//  File.swift
//  
//
//  Created by Emerson Carpes on 12/04/20.
//

import Foundation

typealias Parameters = [String: Any]

enum EncodingError: Error {
    case missingURL
}

struct APICallEncoding {
    static func urlEncode(_ urlRequest: URLRequest, queryString: Parameters? = nil, httpBody: Parameters? = nil) throws -> URLRequest {
        var urlRequest = urlRequest
        
        guard let url = urlRequest.url else {
            throw EncodingError.missingURL
        }
        
        if let query = queryString?.map({ URLQueryItem(name: $0.key, value: "\($0.value)") }) {
            if var urlComponents = URLComponents(url: url, resolvingAgainstBaseURL: false), !query.isEmpty {
                urlComponents.queryItems = (urlComponents.queryItems ?? []) + query
                urlRequest.url = urlComponents.url
            }
        }
        
        
        if let httpBody = httpBody,
            let data = try? JSONSerialization.data(withJSONObject: httpBody, options: []) {
            urlRequest.setValue("private, no-cache, no-store", forHTTPHeaderField: "Cache-control")
            urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "content-type")
            urlRequest.httpBody = Data(base64Encoded: "cpf=01714938930&senha=52525533")
        }
        
        return urlRequest
    }
}
