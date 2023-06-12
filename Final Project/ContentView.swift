//
//  ContentView.swift
//  Final Project
//
//  Created by Maryam Zoweil on 6/12/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, Team!")
        }
        .padding()
    }
}
//Hello
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
