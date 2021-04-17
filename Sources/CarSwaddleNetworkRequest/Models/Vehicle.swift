//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct Vehicle: Codable {
    public let id: String
    public let licensePlate: String
    public let state: String?
    public let name: String
    public let vin: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let userID: String
    public let vehicleDescription: VehicleDescription?
}
