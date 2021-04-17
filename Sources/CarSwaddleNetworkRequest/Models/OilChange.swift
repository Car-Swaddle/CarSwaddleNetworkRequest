//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct OilChange: Codable {
    public let id: String
    public let oilType: OilType
    public let createdAt: Date?
    public let updatedAt: Date?
}

public enum OilType: String, Codable {
    case conventional = "CONVENTIONAL"
    case blend = "BLEND"
    case synthetic = "SYNTHETIC"
    case highMileage = "HIGH_MILEAGE"
}
