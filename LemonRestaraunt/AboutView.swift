//
//  AboutView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/14/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationStack{
            Text("Welcome to Little Lemon!")
                .font(.title)
                .padding(.bottom, -200)
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
        }

        .navigationTitle("About Us")
    }
}

#Preview {
    AboutView()
}
