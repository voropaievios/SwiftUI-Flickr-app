//
//  FlickrCollectionViewModel.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 17.12.2020.
//

import Foundation
import UIKit

class FlickrCollectionViewModel {

    let service = FlickrService()
    
    init() {
        fetchImages { response in
            print(response)
        }
    }
    
    func fetchImages(completion: @escaping ([UIImage]) -> Void) {
        service.fetchRecentImages(completion: { respone in
            print(respone)
        })
    }
}
