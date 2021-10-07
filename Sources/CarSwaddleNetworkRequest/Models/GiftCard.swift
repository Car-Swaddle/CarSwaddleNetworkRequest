//
//  File.swift
//  
//
//  Created by Kyle Kendall on 7/28/21.
//

import Foundation


public struct GiftCard: Codable {
    public let id: String
    public let code: String
    public let startingBalance: Int
    public let remainingBalance: Int
    public let expiration: Date?
    public let purchaser: String?
    public let batchGroup: String?
}

public struct GiftCardCreate: Codable {
    public let code: String
    public let startingBalance: Int
    public let remainingBalance: Int?
    public let expiration: Date?
}


/*
 let creationDateString = json["createdAt"] as? String,
 let creationDate = serverDateFormatter.date(from: creationDateString),
 let createdByUserID = json["createdByUserID"] as? String,
 let discountBookingFee = json["discountBookingFee"] as? Bool,
 let isCorporate = json["isCorporate"] as? Bool,
 let name = json["name"] as? String,
 let redeemByString = json["redeemBy"] as? String,
 let redeemBy = serverDateFormatter.date(from: redeemByString),
 let redemptions = json["redemptions"] as? Int,
 let updatedAtString = json["updatedAt"] as? String,
 let updatedAt = serverDateFormatter.date(from: updatedAtString) else { return nil }

let createdByMechanicID = json["createdByUserID"] as? String
let amountOff = json["amountOff"] as? Int
let maxRedemptions = json["maxRedemptions"] as? Int
let percentOff = json["percentOff"] as? CGFloat
 */

public struct Coupon: Codable {
    let discountBookingFee: Bool
    let isCorporate: Bool
    let name: String
    // And More
}

public struct PriceCodeResponse: Codable {
    let redeemMessage: String
    let giftCard: GiftCard?
    let coupon: Coupon?
}
