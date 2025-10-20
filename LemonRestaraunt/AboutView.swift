//
//  AboutView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/14/25.
//

import SwiftUI

struct AboutView: View {
    //variables
    let userName = "Wendell"
    @State private var userName2 = ""
    @State private var orders: Int = 0
    @State private var reservationCount = 0
    var body: some View {
        NavigationStack{
            Text("Welcome \(userName) to Little Lemon!")
                .font(.title)
                .padding(.bottom, -200)
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
            TextField("Enter your name", text:$userName2)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("Hi \(userName2)!")
                .padding()
            Stepper("Orders: \(orders)", value:$orders, in: 0...5)
                .padding()
                .tint(.blue)
            
            Button("Order Again"){
                orders += 1
            }
            
            Text("You have order \(orders) times")
                .padding()
            Button("Reset Orders")
            {
                orders = 0
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            
            
            Button("Add Reservation"){
                reservationCount += 1
            }
            
            
            Text(String(repeating:"🍽️", count:reservationCount))
        }

        .navigationTitle("About Us")
    }
}

#Preview {
    AboutView()
}
