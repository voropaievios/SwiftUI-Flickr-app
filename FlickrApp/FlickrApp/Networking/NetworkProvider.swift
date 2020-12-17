//
//  NetworkManager.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 17.12.2020.
//

import Alamofire

typealias NetworkCompletionHandler = (DataResponse<Data>) -> Void

class NetworkProvider {
    private let sessionManager: SessionManager
    private let requestBuilder: RequestBuilderType
    
    init() {
        sessionManager = Alamofire.SessionManager(configuration: .default)
        requestBuilder = RequestBuilder()
    }
    
    func sendRequest(_ endpoint: Endpoint, completion: @escaping (NetworkCompletionHandler)) {
        guard let request = requestBuilder.buildRequest(for: endpoint, sessionManager: sessionManager) else {
            return
        }
        
        request.responseData(queue: .main) { response in
            completion(response)
        }
    }
}


