//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct Referrer {
    let id: String
    // Pseudo-enum for source: user, email, ad, campaign, etc
    let sourceType: String
    // Internal metadata - id for ad campaign, email template
    let externalID: String
    let createdAt: Date
    let updatedAt: Date
    let referrerDescription: String?
    let stripeExpressAccountID: String
    let vanityID: String
    let activeCouponID: String?
    let activePayStructureID: String?
    let userID: String
    let couponID: String?
    let payStructureID: String?
    
    public enum CodingKeys: String, CodingKey {
        case id, sourceType, externalID, stripeExpressAccountID, vanityID, activeCouponID, activePayStructureID, userID, couponID, payStructureID, createdAt, updatedAt
        case referrerDescription = "description"
    }
}


