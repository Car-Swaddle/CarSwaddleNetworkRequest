//
//  FileUploadService.swift
//  CarSwaddleNetworkRequest
//
//  Created by Kyle Kendall on 1/5/19.
//  Copyright © 2019 CarSwaddle. All rights reserved.
//

import Foundation

extension NetworkRequest.Request.Endpoint {
    fileprivate static let upload = Request.Endpoint(rawValue: "/api/profile-picture/{image}")
    fileprivate static let verification = Request.Endpoint(rawValue: "/api/profile-picture")
}

public extension Path {
    
    public convenience init(endpoint: Request.Endpoint, pathArguments: [String: String]) throws {
        try self.init(originalPath: endpoint.rawValue, pathArguments: pathArguments)
    }
    
}

final public class FileService: Service {
    
    @discardableResult
    public func uploadProfileImage(fileURL: URL, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
        //        let queryItems: [URLQueryItem] = [URLQueryItem(name: "apiVersion", value: apiVersion)]
        //        guard let urlRequest = serviceRequest.uploadMultipartFormDataTask(with: <#T##NSMutableURLRequest#>, url: <#T##URL#>, completion: <#T##(Data?, HTTPURLResponse?, Error?) -> Void#>)
        //        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
        //            self?.completeWithJSON(data: data, error: error, completion: completion)
        //        }
        //        let path = Path(originalPath: , pathArguments: <#T##[String : String]#>)
        guard let path = try? Path(endpoint: .upload, pathArguments: ["image": imageName]) else { return nil }
        guard let urlRequest = serviceRequest.multipartFormDataPost(withPath: path.path) else { return nil }
        
        return serviceRequest.uploadMultipartFormDataTask(with: urlRequest, fileURL: fileURL, completion: <#T##(Data?, HTTPURLResponse?, Error?) -> Void#>)
    }
    
    @discardableResult
    public func getProfileImage(imageName: String, completion: @escaping JSONCompletion) -> URLSessionDataTask? {
//        let queryItems: [URLQueryItem] = [URLQueryItem(name: "apiVersion", value: apiVersion)]
//        guard let urlRequest = serviceRequest.uploadMultipartFormDataTask(with: <#T##NSMutableURLRequest#>, url: <#T##URL#>, completion: <#T##(Data?, HTTPURLResponse?, Error?) -> Void#>)
//        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
//            self?.completeWithJSON(data: data, error: error, completion: completion)
//        }
//        let path = Path(originalPath: , pathArguments: <#T##[String : String]#>)
        guard let path = try? Path(endpoint: .upload, pathArguments: ["image": imageName]) else { return nil }
        guard let urlRequest = serviceRequest.multipartFormDataPost(withPath: path.path) else { return nil }
        
        return serviceRequest.uploadMultipartFormDataTask(with: urlRequest, file: <#T##URL#>, completion: <#T##(Data?, HTTPURLResponse?, Error?) -> Void#>)
    }
    
//    @discardableResult
//    public func getVerification(completion: @escaping JSONCompletion) -> URLSessionDataTask? {
//        guard let urlRequest = serviceRequest.get(with: .verification) else { return nil }
//        return sendWithAuthentication(urlRequest: urlRequest) { [weak self] data, error in
//            self?.completeWithJSON(data: data, error: error, completion: completion)
//        }
//    }
    
}


