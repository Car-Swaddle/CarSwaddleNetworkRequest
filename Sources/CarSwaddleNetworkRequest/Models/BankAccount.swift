//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct BankAccount: Codable {
    public let identifier: String
    public let accountID: String
    public let accountHolderName: String
    public let accountHolderType: String
    public let bankName: String
    public let country: String
    public let currency: String
    public let defaultForCurrency: Bool
    public let fingerprint: String
    public let last4: String
    public let routingNumber: String
    public let status: String
//    let mechanic: Mechanic?
}
