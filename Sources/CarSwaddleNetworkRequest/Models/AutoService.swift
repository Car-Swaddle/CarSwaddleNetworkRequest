//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct AutoService: Codable {
    public let id: String
    public let balanceTransactionID: String?
    public let chargeID: String?
    public let couponID: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let isCanceled: Bool?
    public let notes: String?
    public let scheduledDate: Date?
    public let status: AutoServiceStatus?
    public let transferID: String?
    public let userID: String?
    public let mechanicID: String
    public let mechanic: Mechanic
    public let location: AutoServiceLocation
    public let vehicleID: String?
    public let vehicle: Vehicle
    public let serviceEntities: [ServiceEntity]
    public let reviewFromUser: Review?
    public let reviewFromMechanic: Review?
    public let user: User?
}

public enum AutoServiceStatus: String, Codable {
    case scheduled, canceled, inProgress, completed
}
