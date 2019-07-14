//
//  CouponService.swift
//  CarSwaddleNetworkRequestTests
//
//  Created by Kyle Kendall on 7/14/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation


import XCTest
@testable import CarSwaddleNetworkRequest

class CouponTests: CarSwaddleLoginTestCase {
    
    let couponService = CouponService(serviceRequest: serviceRequest)
    
    func testRequestAuthority() {
        let exp = expectation(description: "\(#function)\(#line)")
        
        couponService.getCoupons(limit: 30, offset: 0) { json, error in
            XCTAssert(json != nil && error == nil, "Should get values")
            json?.printObject()
            exp.fulfill()
        }
        
        waitForExpectations(timeout: 40, handler: nil)
    }
    
}

