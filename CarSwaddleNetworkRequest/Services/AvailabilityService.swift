//
//  TemplateTimeSpanService.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 10/20/18.
//  Copyright © 2018 CarSwaddle. All rights reserved.
//

import UIKit

extension NetworkRequest.Request.Endpoint {
    fileprivate static let availability = Request.Endpoint(rawValue: "/api/availability")
//    fileprivate static let user = Request.Endpoint(rawValue: "/api/user")
//    fileprivate static let currentUser = Request.Endpoint(rawValue: "/api/current-user")
}

final class AvailabilityService: Service {
    
    @discardableResult
    public func postAvailability(json: JSONObject, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        var urlRequest = serverRequest.get(with: .availability)
        try? urlRequest?.authenticate()
        return urlRequest?.send { data, error in
            guard let data = data,
                let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? JSONObject else {
                    completion(nil, error)
                    return
            }
            completion(json, nil)
        }
    }
    
}
