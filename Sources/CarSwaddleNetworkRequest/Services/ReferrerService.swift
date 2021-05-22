//
//  File.swift
//  
//
//  Created by Kyle Kendall on 4/17/21.
//

import Foundation

extension NetworkRequest.Request.Endpoint {
    fileprivate static let referrers = Request.Endpoint(rawValue: "/api/referrers")
}

final public class ReferrerService: Service {
    
    @discardableResult
    public func getReferrers(completion: @escaping JSONCompletion) -> URLSessionDataTask? {
//        let locationJSON: JSONObject = ["latitude": location.latitude, "longitude": location.longitude]
//        var json: JSONObject = ["mechanicID": mechanicID, "oilType": oilType, "location": locationJSON]
//        if let couponCode = couponCode {
//            json["coupon"] = couponCode
//        }
//        guard let body = (try? JSONSerialization.data(withJSONObject: json, options: [])),
//            let urlRequest = serviceRequest.post(with: .price, body: body, contentType: .applicationJSON) else { return nil }
//        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
//            self?.completeWithPriceJSON(data: data, error: error, completion: completion)
//        }
        return nil
    }
    
    @discardableResult
    public func getReferrer(referrerID: String, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
//        let locationJSON: JSONObject = ["referrerID": location.latitude, "longitude": location.longitude]
//        var json: JSONObject = ["mechanicID": mechanicID, "oilType": oilType, "location": locationJSON]
//        if let couponCode = couponCode {
//            json["coupon"] = couponCode
//        }
//        guard let body = (try? JSONSerialization.data(withJSONObject: json, options: [])),
//            let urlRequest = serviceRequest.post(with: .price, body: body, contentType: .applicationJSON) else { return nil }
//        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
//            self?.completeWithPriceJSON(data: data, error: error, completion: completion)
//        }
        
        return nil
    }
    
    @discardableResult
    public func getPrice(mechanicID: String, oilType: String, locationID: String, couponCode: String?, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
//        var json: JSONObject = ["mechanicID": mechanicID, "oilType": oilType, "locationID": locationID]
//        if let couponCode = couponCode {
//            json["coupon"] = couponCode
//        }
//        guard let body = (try? JSONSerialization.data(withJSONObject: json, options: [])),
//            let urlRequest = serviceRequest.post(with: .price, body: body, contentType: .applicationJSON) else { return nil }
//        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
//            self?.completeWithPriceJSON(data: data, error: error, completion: completion)
//        }
        
        return nil
    }
    
    func completeWithPriceJSON(data: Data?, error: Error?, completion: @escaping (_ json: JSONObject?, _ error: Error?) -> Void) {
//        var error = error
//        guard let data = data,
//            let json = (try? JSONSerialization.jsonObject(with: data, options: [])) as? JSONObject else {
//                completion(nil, error)
//                return
//        }
//        if error != nil, let errorCode = json["code"] as? String, let priceError = PriceError(rawValue: errorCode) {
//            error = priceError
//        }
//        completion(json, error)
    }
    
}

