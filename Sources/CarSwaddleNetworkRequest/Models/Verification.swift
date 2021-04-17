//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

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
