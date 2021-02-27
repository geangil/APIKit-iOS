//
//  File.swift
//  
//
//  Created by Emerson Carpes on 03/05/20.
//

import XCTest
@testable import APIKit

final class EnvironmetTests: XCTestCase {
    
    override class func setUp() {
        
    }
    
    override class func tearDown() {
        
    }
    
    func testEnvironmentSetup() {
        ParanaBanco.setup()
        
        XCTAssertEqual(Environment.current, Environment.production)
    }
    
    func testProductionUrl() {
        Environment.current = .production
        XCTAssertEqual(Environment.current.url, "https://app.paranabanco.b.br/")
    }
    
    func testHomologUrl() {
        Environment.current = .homolog
        XCTAssertEqual(Environment.current.url, "https://h2app.paranabanco.b.br/")
    }
}
