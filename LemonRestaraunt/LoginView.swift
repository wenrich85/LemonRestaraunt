//
//  LoginView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/18/25.
//

import SwiftUI

struct LoginView: View {
    @State private var userName = ""
    @State private var isLoggedIn = false
    var body: some View {
        NavigationView{
            VStack{
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                
                TextField("Enter your username:", text:$userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login"){
                    if userName == "Wendell"{
                        print("Clicked")
                        isLoggedIn = true
                    }
                }

            }
        }
    }
}

#Preview {
    LoginView()
}
