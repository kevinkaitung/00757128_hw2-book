//
//  ContentView.swift
//  00757128_hw2
//
//  Created by User09 on 2020/10/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            homePage()
                .tabItem {
                    Image(systemName: "house")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("Home")
                }
            tourGuide()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text("Tour Guide")
                }
            gallery()
                .tabItem {Image(systemName: "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    Text("Gallery")
                }
            changeIcon()
                .tabItem {Image(systemName: "square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    Text("App Icon")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
