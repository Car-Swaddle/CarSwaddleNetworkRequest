//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation


public struct Mechanic: Codable {
    public let id: String
    public let isActive: Bool
    public let isAllowed: Bool
    public let userID: String?
    public let user: MechanicUser?
    public let scheduleTimeSpans: [TemplateTimeSpan]?
    public let stripeAccountID: String?
    public let services: [AutoService]?
    public let reviews: [Review]?
    public let serviceRegion: Region?
    public let dateOfBirth: Date?
    public let address: Address?
    public let stats: Stats?
    public let profileImageID: String?
    public let pushDeviceToken: String?
    public let balance: Balance?
    public let transactions: [Transaction]?
    public let payouts: [Payout]
    public let identityDocumentID: String?
    public let identityDocumentBackID: String?
    public let verification: Verification?
    public let taxYears: [TaxInfo]?
    public let bankAccount: BankAccount?
    public let hasSetAvailability: Bool
    public let hasSetServiceRegion: Bool
    public let creationDate: Date
    public let oilChangePricing: OilChangePricing?
    public let chargeForTravel: Bool
    
    
    public struct MechanicUser: Codable {
        public let id: String
        public let firstName: String
        public let lastName: String
        public let phoneNumber: String?
        public let imageID: String?
        public let email: String
        public let isEmailVerified: Bool?
        public let isPhoneNumberVerified: Bool?
        public let timeZone: String?
        public let mechanicID: String
        public let signUpReferrerID: String?
        public let activeReferrerID: String?
    }
    
}
