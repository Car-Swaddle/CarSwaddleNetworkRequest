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
    public let mechanicID: String
    public let signUpReferrerID: String?
    public let activeReferrerID: String?
}


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

public struct TemplateTimeSpan: Codable {
    public let id: String
    public let weekDay: Int
    public let startTime: String
    public let duration: Float
    public let mechanicID: String
}

public struct AutoService: Codable {
    public let id: String
    public let balanceTransactionID: String?
    public let chargeID: String?
    public let couponID: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let isCanceled: Bool?
    public let notes: String?
    public let scheduledDate: Date?
    public let status: AutoServiceStatus?
    public let transferID: String?
    public let userID: String?
    public let mechanicID: String
    public let mechanic: Mechanic
    public let location: AutoServiceLocation
    public let vehicleID: String?
    public let vehicle: Vehicle
    public let serviceEntities: [ServiceEntity]
    public let reviewFromUser: Review?
    public let reviewFromMechanic: Review?
    public let user: User?
}

public enum AutoServiceStatus: String, Codable {
    case scheduled, canceled, inProgress, completed
}


public struct AutoServiceLocation: Codable {
    public let id: String
//    let point: Point // There is some odd looking mumbojumbo json with this one. Too lazy to do this right now.
    public let streetAddress: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let autoServiceID: String
    public let mechanicID: String?
}

public struct ServiceEntity: Codable {
    public let id: String
    public let entityType: ServiceEntityType
    public let createdAt: Date
    public let updatedAt: Date
    public let autoServiceID: String
    public let oilChangeID: String
    public let oilChange: OilChange
}

public enum ServiceEntityType: String, Codable {
    case oilChange = "OIL_CHANGE"
}

public struct OilChange: Codable {
    public let id: String
    public let oilType: OilType
    public let createdAt: Date?
    public let updatedAt: Date?
}

public enum OilType: String, Codable {
    case conventional = "CONVENTIONAL"
    case blend = "BLEND"
    case synthetic = "SYNTHETIC"
    case highMileage = "HIGH_MILEAGE"
}

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

public struct Vehicle: Codable {
    public let id: String
    public let licensePlate: String
    public let state: String?
    public let name: String
    public let vin: String?
    public let createdAt: Date
    public let updatedAt: Date
    public let userID: String
    public let vehicleDescription: VehicleDescription?
}

public struct VehicleDescription: Codable {
    public let id: String
    public let make: String
    public let model: String
    public let style: String
    public let trim: String
    public let year: String
}

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

public struct TransactionReceipt: Codable {
    public let identifier: String
    public let receiptPhotoID: String
    public let transactionMetadata: TransactionMetadata?
    public let createdAt: Date
}


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


public struct TaxInfo: Codable {
    public let taxYear: String
    public let metersDriven: Double
    public let mechanicCostInCents: Double
}

public struct Balance: Codable {
    public let available: [Amount]
    public let pending: [Amount]
    public let connect_reserved: [Amount]?
}

public struct Amount: Codable {
    public let amount: Int
    public let currency: String
}

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

public struct Region: Codable {
    public let id: String
    public let longitude: Double
    public let latitude: Double
    public let radius: Double
//    let mechanic: Mechanic?
}

public struct UpdateRegion: Codable {
    public let latitude: Double
    public let longitude: Double
    public let radius: Double
}

public struct Verification: Codable {
//    let mechanic: Mechanic?
    public let disabledReason: String?
    public let dueByDate: Calendar?
    public let pastDue: [String]?
    public let currentlyDue: [String]?
    public let eventuallyDue: [String]?
    
    enum CodingKeys: String, CodingKey {
        case disabledReason = "disabled_reason"
        case dueByDate = "current_deadline"
        case pastDue = "past_due"
        case currentlyDue = "currently_due"
        case eventuallyDue = "eventually_due"
    }
}

public struct Stats: Codable {
    public let averageRating: Double
    public let numberOfRatings: Int
    public let autoServicesProvided: Int
//     let mechanic: Mechanic?
}


public struct Address: Codable {
    public let identifier: String
    public let line1: String?
    public let line2: String?
    public let postalCode: String?
    public let city: String?
    public let state: String?
    public let country: String?
}
