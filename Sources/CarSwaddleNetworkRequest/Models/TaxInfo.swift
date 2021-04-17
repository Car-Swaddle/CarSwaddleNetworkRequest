//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct TaxInfo: Codable {
    public let taxYear: String
    public let metersDriven: Double
    public let mechanicCostInCents: Double
}
