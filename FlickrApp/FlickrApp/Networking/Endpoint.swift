//
//  Endpoint.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 17.12.2020.
//

import Foundation

typealias HTTPHeaders = [String: String]

enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

struct Endpoint {
    
    var url: URL
    var httpMethod: HTTPMethod
    var headers: HTTPHeaders?
    var parameters: [String: Any]?
    
    
    init(url: URL, httpMethod: HTTPMethod, headers: HTTPHeaders? = nil, parameters: [String: Any]? = nil) {
        self.url = url
        self.httpMethod = httpMethod
        self.headers = headers
        self.parameters = parameters
    }
}
