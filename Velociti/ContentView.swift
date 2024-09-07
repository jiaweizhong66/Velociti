//
//  ContentView.swift
//  Velociti
//
//  Created by Curry Zhong on 2024-09-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Velociti")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
