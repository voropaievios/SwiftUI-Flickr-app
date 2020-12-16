//
//  CircleLogo.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 16.12.2020.
//

import SwiftUI

struct CircleLogo: View {
    var body: some View {
        Image("logo")
            .aspectRatio(contentMode: .fill)
            .clipShape(Rectangle())
            .shadow(radius: 10)
    }
}

struct CircleLogo_Previews: PreviewProvider {
    static var previews: some View {
        CircleLogo()
    }
}
