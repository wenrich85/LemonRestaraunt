//
//  ContentView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/14/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "hand.wave.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.brown)
                Text("Hello, world!")
                    .font(.system(size: 52))
                NavigationLink(destination:AboutView()){
                    Text("About")
                    .font(.system(size: 32))

                    
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
