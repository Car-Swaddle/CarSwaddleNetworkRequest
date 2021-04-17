//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct Review: Codable {
    public let id: String
    public let rating: Float
    public let text: String
    public let reviewerID: String
    public let revieweeID: String
    public let autoServiceIDFromUser: String?
    public let autoServiceIDFromMechanic: String?
    public let createdAt: Date
    public let userID: String?
    public let mechanicID: String?
}
