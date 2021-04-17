//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

// Make custom encodable for createdDouble etc.
public struct Payout: Codable {
    public let id: String
    public let amount: Int
    public let arrivalDouble: Double
    public let createdDouble: Double
    public let currency: String
    public let payoutDescription: String?
    public let destination: String?
    public let type: String
    public let method: String
    public let sourceType: String
    public let statementDescriptor: String?
    public let failureMessage: String?
    public let failureCode: String?
    public let failureBalanceTransaction: String?
    public let transactions: [Transaction]
    public let balanceTransactionID: String?
    public let status: PayoutStatus
    
    public enum CodingKeys: String, CodingKey {
        case id
        case amount
        case arrivalDouble = "arrival_date"
        case createdDouble = "created"
        case currency
        case payoutDescription = "description"
        case destination
        case type
        case method
        case sourceType = "source_type"
        case statementDescriptor = "statement_descriptor"
        case failureMessage = "failure_message"
        case failureCode = "failure_code"
        case failureBalanceTransaction = "failure_balance_transaction"
        case transactions
        case balanceTransactionID = "balance_transaction_id"
        case status
    }
    
}

public enum PayoutStatus: String, Codable {
    case inTransit = "in_transit"
    case paid = "paid"
    case pending = "pending"
    case canceled = "canceled"
    case failed = "failed"
}
