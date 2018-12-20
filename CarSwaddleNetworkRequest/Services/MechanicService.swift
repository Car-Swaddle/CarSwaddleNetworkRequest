//
//  MechanicService.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 11/7/18.
//  Copyright © 2018 CarSwaddle. All rights reserved.
//

import UIKit

extension NetworkRequest.Request.Endpoint {
    fileprivate static let nearestMechanic = Request.Endpoint(rawValue: "/api/nearest-mechanics")
    fileprivate static let updateMechanic = Request.Endpoint(rawValue: "/api/update-mechanic")
    fileprivate static let currentMechanic = Request.Endpoint(rawValue: "/api/current-mechanic")
}

final public class MechanicService: Service {
    
    @discardableResult
    public func getNearestMechanics(limit: Int, latitude: Double, longitude: Double, maxDistance: Double, completion: @escaping JSONArrayCompletion) -> URLSessionDataTask? {
        let queryItems: [URLQueryItem] = [URLQueryItem(name: "latitude", value: "\(latitude)"),
                                          URLQueryItem(name: "longitude", value: "\(longitude)"),
                                          URLQueryItem(name: "maxDistance", value: "\(maxDistance)"),
                                          URLQueryItem(name: "limit", value: "\(limit)")]
        guard let urlRequest = serviceRequest.get(with: .nearestMechanic, queryItems: queryItems) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
            self?.completeWithJSONArray(data: data, error: error, completion: completion)
        }
    }
    
    @discardableResult
    public func getCurrentMechanic(completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        guard let urlRequest = serviceRequest.get(with: .currentMechanic) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
            self?.completeWithJSON(data: data, error: error, completion: completion)
        }
    }
    
    @discardableResult
    public func updateCurrentMechanic(isActive: Bool?, token: String?, completion: @escaping (_ json: JSONObject?, _ error: Error?) -> Void) -> URLSessionDataTask? {
        var json: JSONObject = [:]
        if let isActive = isActive {
            json["isActive"] = isActive
        }
        if let token = token {
            json["token"] = token
        }
        return updateCurrentMechanic(json: json, completion: completion)
    }
    
    @discardableResult
    public func updateCurrentMechanic(json: JSONObject, completion: @escaping (_ json: JSONObject?, _ error: Error?) -> Void) -> URLSessionDataTask? {
        guard let body = (try? JSONSerialization.data(withJSONObject: json, options: [])) else { return nil }
        guard let urlRequest = serviceRequest.patch(with: .updateMechanic, body: body, contentType: .applicationJSON) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
            self?.completeWithJSON(data: data, error: error, completion: completion)
        }
    }
    
}