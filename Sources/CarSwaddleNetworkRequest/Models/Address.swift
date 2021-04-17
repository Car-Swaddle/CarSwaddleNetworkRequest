//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct Address: Codable {
    public let identifier: String
    public let line1: String?
    public let line2: String?
    public let postalCode: String?
    public let city: String?
    public let state: String?
    public let country: String?
}
