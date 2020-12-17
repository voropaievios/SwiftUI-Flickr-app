//
//  FlickrService.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 17.12.2020.
//

import Foundation

class FlickrService {
    enum Keys {
        static let flickrKey: String = "87d94d421dbe15a33a4fd0b9ee445e89"
    }
    
    private let provider: NetworkProvider
    
    init() {
        self.provider = NetworkProvider()
    }
    
    func fetchRecentImages(completion: (Result<Any, Error>) -> Void) {
        
        let url = URL(string: "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(Keys.flickrKey)&tags=car&per_page=25&format=json&nojsoncallback=1")!
        
        let endpoint = Endpoint(url: url,
                                httpMethod: .post,
                                headers: nil,
                                parameters: [:])
        
        provider.sendRequest(endpoint) { response  in
            print(response.response)
        }
    }
}
