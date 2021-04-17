//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct ServiceEntity: Codable {
    public let id: String
    public let entityType: ServiceEntityType
    public let createdAt: Date
    public let updatedAt: Date
    public let autoServiceID: String
    public let oilChangeID: String
    public let oilChange: OilChange
}

public enum ServiceEntityType: String, Codable {
    case oilChange = "OIL_CHANGE"
}
