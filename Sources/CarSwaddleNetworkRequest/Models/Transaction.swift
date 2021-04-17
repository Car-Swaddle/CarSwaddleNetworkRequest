//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

// Make custom encodable
public struct Transaction: Codable {
    public let id: String
    public let amount: Int
    public let createdDouble: Double
    public let currency: String
    public let transactionDescription: String?
    public let exchangeRate: Int?
    public let fee: Int
    public let net: Int
    public let source: String
    public let type: TransactionType
    public let payout: Payout?
    public let transactionMetadata: TransactionMetadata?
    public let status: String
    public let availableOnDouble: Double
    public let reportingCategory: String?

    public enum CodingKeys: String, CodingKey {
        case id
        case amount
        case createdDouble = "created"
        case currency
        case transactionDescription = "description"
        case exchangeRate
        case fee
        case net
        case source
        case type
        case payout
        case transactionMetadata
        case status
        case availableOnDouble = "available_on"
        case reportingCategory = "reporting_category"
    }
    
}

public enum TransactionType: String, Codable {
    case adjustment = "adjustment"
    case advance = "advance"
    case advanceFunding = "advance_funding"
    case applicationFee = "application_fee"
    case applicationFeeRefund = "application_fee_refund"
    case charge = "charge"
    case connectCollectionTransfer = "connect_collection_transfer"
    case issuingAuthorizationHold = "issuing_authorization_hold"
    case issuingAuthorizationRelease = "issuing_authorization_release"
    case issuingTransaction = "issuing_transaction"
    case payment = "payment"
    case paymentFailureRefund = "payment_failure_refund"
    case paymentRefund = "payment_refund"
    case payout = "payout"
    case payoutCancel = "payout_cancel"
    case payoutFailure = "payout_failure"
    case refund = "refund"
    case refundFailure = "refund_failure"
    case reserveTransaction = "reserve_transaction"
    case reservedFunds = "reserved_funds"
    case stripeFee = "stripe_fee"
    case stripeFxFee = "stripe_fx_fee"
    case taxFee = "tax_fee"
    case topup = "topup"
    case topupReversal = "topup_reversal"
    case transfer = "transfer"
    case transferCancel = "transfer_cancel"
    case transferFailure = "transfer_failure"
    case transferRefund = "transfer_refund"
}
