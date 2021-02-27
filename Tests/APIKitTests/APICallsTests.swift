//
//  APICallsTests.swift
//  
//
//  Created by Emerson Carpes on 04/05/20.
//

import XCTest
@testable import APIKit

final class APICallsTests: XCTestCase {
    
    func testKeyboard() {
        let keyboard: Keyboard?
        
        ParanaBanco.keyboard { result in
            switch result {
            case .success(_):
                break
            case .error(_, object: let object):
                break
            }
        }
    }
}
