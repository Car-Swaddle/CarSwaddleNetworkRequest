//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct AutoServiceLocation: Codable {
    public let id: String
//    let point: Point // There is some odd looking mumbojumbo json with this one. Too lazy to do this right now.
    public let streetAddress: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let autoServiceID: String
    public let mechanicID: String?
}
