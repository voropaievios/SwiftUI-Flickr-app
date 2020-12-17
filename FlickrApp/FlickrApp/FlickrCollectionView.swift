//
//  FlickrCollectionView.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 16.12.2020.
//

import SwiftUI

struct FlickrCollectionView: View {
    private var colors: [Color] = [.blue, .red, .green]
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible())]
    
    private var viewModel = FlickrCollectionViewModel()
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: gridItemLayout, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0 ) {

                ForEach((0...9999), id: \.self) {
                    Image(systemName: "")
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: 150, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .background(colors[$0 % colors.count])
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct FlickrCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        FlickrCollectionView()
    }
}
