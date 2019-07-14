//
//  CouponService.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 7/14/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation


extension NetworkRequest.Request.Endpoint {
    /*
     /api/authorities/request?authority=readAuthorities
     /api/authorities/reject
     /api/authorities/approve
     /api/authorities
     /api/authorityRequests?pending=false
     */
    fileprivate static let coupons = Request.Endpoint(rawValue: "/api/coupons")
}

final public class CouponService: Service {
    
    @discardableResult
    public func getCoupons(limit: Int? = nil, offset: Int? = nil, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        var queryItems: [URLQueryItem] = []
        if let limit = limit {
            let limitQueryItem = URLQueryItem(name: "limit", value: String(limit))
            queryItems.append(limitQueryItem)
        }
        
        if let offset = offset {
            let offsetQueryItem = URLQueryItem(name: "skip", value: String(offset))
            queryItems.append(offsetQueryItem)
        }
        
        guard let urlRequest = serviceRequest.get(with: .coupons, queryItems: queryItems) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { data, error in
            guard let data = data,
                let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? JSONObject else {
                    completion(nil, error)
                    return
            }
            completion(json, error)
        }
    }
    
}
