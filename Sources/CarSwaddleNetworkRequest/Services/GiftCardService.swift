//
//  File.swift
//  
//
//  Created by Kyle Kendall on 7/27/21.
//

import Foundation

extension NetworkRequest.Request.Endpoint {
    private static let giftCardsAPI = "api/gift-cards"
    private static let giftCardsCodeAPI = "/api/gift-cards/code"
    fileprivate static let giftCards = Request.Endpoint(rawValue: giftCardsAPI)
    fileprivate static let giftCardsCode = Request.Endpoint(rawValue: giftCardsCodeAPI)
    
    fileprivate static func giftCardsByID(identifier giftCardID: String) -> NetworkRequest.Request.Endpoint {
        return Request.Endpoint(rawValue: Request.Endpoint.giftCardsAPI + "/" + giftCardID)
    }
    
    fileprivate static func giftCardsByCode(code giftCardCode: String) -> NetworkRequest.Request.Endpoint {
        return Request.Endpoint(rawValue: Request.Endpoint.giftCardsCodeAPI + "/" + giftCardCode)
    }
}

final public class GiftCardService: Service {
    
    @discardableResult
    public func getGiftCardByID(identifier: String, completion: @escaping (_ giftCard: GiftCard?, _ error: Error?) -> Void) -> URLSessionDataTask? {
        guard var urlRequest = serviceRequest.get(with: .giftCardsByID(identifier: identifier)) else { return nil }
        try? urlRequest.authenticate()
        return serviceRequest.send(urlRequest: urlRequest, completion: completion)
    }
    
    @discardableResult
    public func deleteGiftCardByID(identifier: String, completion: @escaping (_ error: Error?) -> Void) -> URLSessionDataTask? {
        guard var urlRequest = serviceRequest.delete(with: .giftCardsByID(identifier: identifier), body: nil) else { return nil }
        try? urlRequest.authenticate()
        return serviceRequest.send(urlRequest: urlRequest, completion: completion)
    }
    
    @discardableResult
    public func getGiftCardByCode(code: String, completion: @escaping (_ giftCard: GiftCard?, _ error: Error?) -> Void) -> URLSessionDataTask? {
        guard var urlRequest = serviceRequest.get(with: .giftCardsByCode(code: code)) else { return nil }
        try? urlRequest.authenticate()
        return serviceRequest.send(urlRequest: urlRequest, completion: completion)
    }
    
    @discardableResult
    public func createGiftCard(giftCard: GiftCardCreate, completion: @escaping (_ giftCard: GiftCard?, _ error: Error?) -> Void) -> URLSessionDataTask? {
        guard let data = giftCard.jsonEncode(),
              var urlRequest = serviceRequest.post(with: .giftCards, body: data) else {
            return nil
        }
        try? urlRequest.authenticate()
        return serviceRequest.send(urlRequest: urlRequest, completion: completion)
    }
    
}
