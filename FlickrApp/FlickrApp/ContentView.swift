//
//  ContentView.swift
//  FlickrApp
//
//  Created by Anton Voropaiev on 16.12.2020.
//

import SwiftUI

struct ContentView: View {
    @State var login: String = ""
    @State var password: String = ""
    
    enum Constants {
        enum Logo {
            static let logoWidth: CGFloat = 100
            static let logoHeigh: CGFloat = 100
        }
        
        enum Gradient {
            static let start: CGFloat = 2
            static let end: CGFloat = 650
        }
        
        enum TextField {
            static let textFieldsHeight: CGFloat = 40
            static let textFieldsCornerRadius: CGFloat = 40
            static let border: CGFloat = 2
        }
    }
    
    var body: some View {
        NavigationView {
            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: Constants.Gradient.start, endRadius: Constants.Gradient.end).ignoresSafeArea()
                .overlay(
                    VStack {
                        CircleLogo().frame(width: Constants.Logo.logoWidth, height: Constants.Logo.logoHeigh, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(130)
                        
                        ZStack(alignment: .leading) {
                            if login.isEmpty {
                                Text("Login").foregroundColor(.white)
                                    .padding(.leading)
                                TextField("", text: $login)
                                    .frame(height: Constants.TextField.textFieldsHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                    .overlay(RoundedRectangle(cornerRadius: Constants.TextField.textFieldsCornerRadius)
                                                .stroke(Color.gray, lineWidth: Constants.TextField.border))
                            }
                        }
                        
                        
                        ZStack(alignment: .leading) {
                            if password.isEmpty {
                                Text("Password").foregroundColor(.white)
                                    .padding(.leading)
                            }
                            
                            SecureField("", text: $password)
                                .frame(height: Constants.TextField.textFieldsHeight, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                                .overlay(RoundedRectangle(cornerRadius: Constants.TextField.textFieldsCornerRadius)
                                            .stroke(Color.gray, lineWidth: Constants.TextField.border))
                            
                        }
                        
                        NavigationLink(destination: FlickrCollectionView()
                                        .navigationBarHidden(true)) {
                            Text("Login")
                        }.navigationBarTitle("")
                        .frame(width: 180, height: 40, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(25)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding(.top)
                        
                        Spacer()
                        
                    }.padding())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(login: "")
    }
}
