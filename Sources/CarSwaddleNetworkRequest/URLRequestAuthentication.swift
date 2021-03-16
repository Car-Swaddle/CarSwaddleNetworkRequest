//
//  ServerRequest.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 9/17/18.
//  Copyright © 2018 CarSwaddle. All rights reserved.
//

import Foundation
import Authentication


private let authentication = AuthController()

public enum RequestError: Error {
    case couldNotAuthenticate
}

private let authenticationHeader = "Authorization"

private func bearerAuthentication(token: String) -> String {
    return "Bearer \(token)"
}

extension URLRequest {
    
    mutating func authenticate() throws {
        guard let token = authentication.token else {
            throw RequestError.couldNotAuthenticate
        }
        setValue(bearerAuthentication(token: token), forHTTPHeaderField: authenticationHeader)
    }
    
}

extension NSMutableURLRequest {
    
    func authenticate() throws {
        guard let token = authentication.token else {
            throw RequestError.couldNotAuthenticate
        }
        setValue(bearerAuthentication(token: token), forHTTPHeaderField: authenticationHeader)
    }
    
}
