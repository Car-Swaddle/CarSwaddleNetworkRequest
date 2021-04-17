//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct Balance: Codable {
    public let available: [Amount]
    public let pending: [Amount]
    public let connect_reserved: [Amount]?
}
