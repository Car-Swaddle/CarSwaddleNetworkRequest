//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct TransactionMetadata: Codable {
    public let id: String
    public let stripeTransactionID: String
    public let mechanicCost: Int
    public let drivingDistance: Int
    public let autoServiceID: String
    public let mechanicID: String
    public let createdAt: Date
    public let transactionReceipts: [TransactionReceipt]
}
