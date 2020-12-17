//
//  RequestBuilder.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 17.12.2020.
//

import Foundation
import Alamofire

protocol RequestBuilderType: class {  // ???
    func buildRequest(for endpoint: Endpoint, sessionManager: SessionManager) -> DataRequest?
}

class RequestBuilder: RequestBuilderType {
    
    func buildRequest(for endpoint: Endpoint, sessionManager: SessionManager) -> DataRequest? {
        let headers = endpoint.headers ?? HTTPHeaders()
        
        guard let alamofireMethod = Alamofire.HTTPMethod(rawValue: endpoint.httpMethod.rawValue) else {
            assertionFailure("Cannot map")
            return nil
        }
        
        return sessionManager.request(endpoint.url,
                                      method: alamofireMethod,
                                      parameters: endpoint.parameters,
                                      encoding: URLEncoding.default,
                                      headers: headers)
    }
}
