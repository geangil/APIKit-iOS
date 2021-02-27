//
//  File.swift
//  
//
//  Created by Emerson Carpes on 23/04/20.
//

import Foundation

public class ParanaBanco: NSObject {
    private override init() {}
    
    public static let shared = ParanaBanco()
    
    public static var environment: Environment = .production
    
    // MARK: Variables

    /// The active user access token
    public var accessToken: String?
    
    public static func setup() {
        UserDefaults.standard.register(defaults: [
            Constants.DefaultKey.environment: Environment.production.rawValue
        ])
    }
}
