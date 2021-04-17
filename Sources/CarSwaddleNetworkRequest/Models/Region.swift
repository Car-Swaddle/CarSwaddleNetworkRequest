//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

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
