//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct TransactionReceipt: Codable {
    public let identifier: String
    public let receiptPhotoID: String
    public let transactionMetadata: TransactionMetadata?
    public let createdAt: Date
}
