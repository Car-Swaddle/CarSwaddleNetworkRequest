//
//  OilChangePricing.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 8/21/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation

public struct OilChangePricing: Codable {
    public let id: String
    public let conventional: Int
    public let blend: Int
    public let synthetic: Int
    public let highMileage: Int
    public let centsPerMile: Int
    public let mechanicID: String
}

public struct OilChangePricingUpdate: Encodable {
    public let conventional: Int
    public let blend: Int
    public let synthetic: Int
    public let highMileage: Int
}
