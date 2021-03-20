//
//  File.swift
//  
//
//  Created by Kyle Kendall on 3/17/21.
//

import Foundation

public struct UpdateUser: Encodable {
    public let firstName: String?
    public let lastName: String?
    public let phoneNumber: String?
    public let token: String?
    public let pushTokenType: String?
    public let timeZone: String?
    public let adminKey: String?
    public let referrerID: String?
    
    public init(firstName: String? = nil, lastName: String? = nil, phoneNumber: String? = nil, token: String? = nil, pushTokenType: String? = nil, timeZone: String? = nil, adminKey: String? = nil, referrerID: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.token = token
        self.pushTokenType = pushTokenType
        self.timeZone = timeZone
        self.adminKey = adminKey
        self.referrerID = referrerID
    }
    
}
