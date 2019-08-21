//
//  OilChangePricing.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 8/21/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation

public struct OilChangePricing: Codable {
    let id: String
    let conventional: Int
    let blend: Int
    let synthetic: Int
    let highMileage: Int
    let centsPerMile: Int
}

public struct OilChangePricingUpdate: Encodable {
    let conventional: Int
    let blend: Int
    let synthetic: Int
    let highMileage: Int
}
