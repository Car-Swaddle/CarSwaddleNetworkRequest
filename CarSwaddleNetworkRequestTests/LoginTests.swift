//
//  LoginTests.swift
//  CarSwaddleNetworkRequestTests
//
//  Created by Kyle Kendall on 10/20/18.
//  Copyright © 2018 CarSwaddle. All rights reserved.
//

import XCTest
@testable import CarSwaddleNetworkRequest

private let password = "password"

class LoginTests: XCTestCase {
    
    private let authService = AuthService()
    
    func testLogin() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.login(email: "k@k.com", password: password) { json, token, error in
            XCTAssert(token != nil, "Should have logged in")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testLoginIncorrectPass() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.login(email: "k@k.com", password: "some incorrect pass") { json, token, error in
            XCTAssert(token == nil, "Should not have logged in incorrect pass")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testLoginIncorrectEmail() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.login(email: "ktsjdkf@kasdgjh.com", password: password) { json, token, error in
            XCTAssert(token == nil, "Should not have logged in incorrect email")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testSignUp() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        let newEmail = UUID().uuidString
        authService.signUp(email: newEmail + "@k.com", password: password) { json, token, error in
            XCTAssert(token != nil, "Should have logged in")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testMechanicLogin() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.mechanicLogin(email: "k@k.com", password: password) { json, token, error in
            XCTAssert(token != nil, "Should have logged in")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testMechanicLoginIncorrectPassword() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.mechanicLogin(email: "k@k.com", password: "some incorrect password") { json, token, error in
            XCTAssert(token == nil, "Should not have logged in incorrect pass")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testMechanicLoginIncorrectEmail() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        authService.mechanicLogin(email: "kasdofi37@kasdfopi7.com", password: password) { json, token, error in
            XCTAssert(token == nil, "Should not have logged in incorrect email")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
    func testMechanicSignUp() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        let newEmail = UUID().uuidString
        authService.mechanicSignUp(email: newEmail + "@k.com", password: password) { json, token, error in
            XCTAssert(token != nil, "Should have logged in")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
}
