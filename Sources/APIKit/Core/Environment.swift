//
//  File.swift
//  
//
//  Created by Emerson Carpes on 23/04/20.
//

import Foundation

public enum Environment: Int {
    case production
    case homolog
}

extension Environment {
    
    public static var current: Environment {
        get {
            return Environment(rawValue: UserDefaults.standard.integer(forKey: Constants.DefaultKey.environment)) ?? .production
        }
        set (val) {
            UserDefaults.standard.set(val.rawValue, forKey: Constants.DefaultKey.environment)
        }
    }
    
    public var url: String {
        switch self {
        case .production: return "https://app.paranabanco.b.br/"
        case .homolog: return "https://h2app.paranabanco.b.br/"
        }
    }
    
}
