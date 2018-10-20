//
//  CarSwaddleNetworkRequestTests.swift
//  CarSwaddleNetworkRequestTests
//
//  Created by Kyle Kendall on 9/17/18.
//  Copyright © 2018 CarSwaddle. All rights reserved.
//

import XCTest
@testable import CarSwaddleNetworkRequest

class CarSwaddleNetworkRequestTests: XCTestCase {
    
    private let availabilityService = AvailabilityService()
    private let authService = AuthService()

    override func setUp() {
        
        guard authentication.token == nil else { return }
        
        let exp = expectation(description: "\(#function)\(#line)")
        
        // Issue an async request
//        let data = getData()
//        db.overwriteDatabase(data) {
        authService.mechanicLogin(email: "k@k.com", password: "password") { json, token, error in
            if let token = token {
                authentication.setToken(token)
            }
            exp.fulfill()
        }
        
        // Wait for the async request to complete
        waitForExpectations(timeout: 40, handler: nil)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testAvailability() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        availabilityService.postAvailability(json: availabilityJSON) { json, error in
            print("json: \(String(describing: json))")
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}


private let availabilityJSON: JSONObject = [
    :
]
