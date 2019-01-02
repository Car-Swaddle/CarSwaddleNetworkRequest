//
//  ReviewService.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 1/1/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation

extension NetworkRequest.Request.Endpoint {
    fileprivate static let reviews = Request.Endpoint(rawValue: "/api/reviews")
    fileprivate static let ratingsReceived = Request.Endpoint(rawValue: "/api/ratings-received")
}


final public class ReviewService: Service {
    
    @discardableResult
    public func getReviewsByCurrentUser(completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        return getReviews(queryItems: [:], completion: completion)
    }
    
    @discardableResult
    public func getReviews(forMechanicWithID mechanicID: String, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        return getReviews(queryItems: ["mechanic": mechanicID], completion: completion)
    }
    
    @discardableResult
    private func getReviews(queryItems: QueryItems, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        guard let urlRequest = serviceRequest.get(with: .reviews, queryItems: queryItems.urlQueryItems) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
            self?.completeWithJSON(data: data, error: error, completion: completion)
        }
    }
    
    @discardableResult
    public func getRatingsReceivedForCurrentUser(completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        return getRatingsReceived(queryItems: [:], completion: completion)
    }
    
    @discardableResult
    public func getRatingsReceived(userID: String, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        return getRatingsReceived(queryItems: ["user": userID], completion: completion)
    }
    
    @discardableResult
    public func getRatingsReceived(mechanicID: String, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        return getRatingsReceived(queryItems: ["mechanic": mechanicID], completion: completion)
    }
    
    @discardableResult
    private func getRatingsReceived(queryItems: QueryItems, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        guard let urlRequest = serviceRequest.get(with: .ratingsReceived, queryItems: queryItems.urlQueryItems) else { return nil }
        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
            self?.completeWithJSON(data: data, error: error, completion: completion)
        }
    }
    
}

extension Dictionary where Key == String, Value == String {
    
    var urlQueryItems: [URLQueryItem] {
        var urlQueryItems: [URLQueryItem] = []
        for key in self.keys {
            guard let value = self[key] else { continue }
            let urlQueryItem = URLQueryItem(name: key, value: value)
            urlQueryItems.append(urlQueryItem)
        }
        return urlQueryItems
    }
    
}

