//
//  MainView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/18/25.
//

import SwiftUI

struct MainView: View {
    @State private var uName = ""
    @State private var isLoggedIn = false
    var body: some View {
        NavigationView{
            
            VStack{
                if isLoggedIn {
                    Text("Welcome, \(uName)")
                        .font(.title)
                        .bold()
                    NavigationLink("Make a reservation", destination:ReservationForm())
                    NavigationLink("About us", destination:AboutView())
                    
                    Button("Logout") {
                        isLoggedIn = false
                    }
                }else {
                    LoginView()
                }
                
               
            }
        }
       
    }
}

#Preview {
    MainView()
}
