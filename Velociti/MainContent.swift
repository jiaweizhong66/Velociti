//
//  MainContent.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

struct MainContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            MapView()
                .tabItem {
                    Label("Map", systemImage: "map")
                }
            
            YouView()
                .tabItem {
                    Label("You", systemImage: "person")
                }
        }
    }
}

struct MainContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainContentView()
    }
}


