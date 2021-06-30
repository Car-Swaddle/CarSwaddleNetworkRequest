//
//  File.swift
//  
//
//  Created by Kyle Kendall on 3/17/21.
//

import Foundation


public struct User: Codable {
    public let id: String
    public let firstName: String
    public let lastName: String
    public let phoneNumber: String?
    public let imageID: String?
    public let email: String
    public let isEmailVerified: Bool?
    public let profileImageID: String?
    public let isPhoneNumberVerified: Bool?
    public let timeZone: String?
    public let mechanic: Mechanic?
    public let mechanicID: String?
    public let signUpReferrerID: String?
    public let activeReferrerID: String?
}
