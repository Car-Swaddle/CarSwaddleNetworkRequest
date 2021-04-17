//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

public struct TemplateTimeSpan: Codable {
    public let id: String
    public let weekDay: Int
    public let startTime: String
    public let duration: Float
    public let mechanicID: String
}
