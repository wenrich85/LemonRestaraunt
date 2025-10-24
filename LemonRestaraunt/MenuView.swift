//
//  MenuView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/23/25.
//

import SwiftUI

struct MenuView: View {
    //Variable Section
    let menuItems = [
        "Pizza":9.99,
        "Pasta":18.50,
        "Salad":12.20,
        "Chocolate Cake":5.75,
        "Chicken Tenders":6.99,
        "Cheese Burger":5.45,
        "French Fries":3.50,
        "Hamburger":11.00,
        "Keylime Pie":8.50,
        
    ]
    let premiumPrice = 10.0
    let valuePrice = 7.0
    @State private var showMessage = false
    @State private var showThankYouMessage = false
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size:32))
                Text("Today's menu")
                    .font(.title)
                    .bold()
            }
            
            //Main
            VStack{
                Toggle("Show a special text", isOn: $showMessage)
                    .padding()
                
                if showMessage {
                    Text("You will display this text")
                        .font(.title3)
                        .foregroundColor(.green)
                }
            }
            
            VStack{
                Toggle("Show Thank You Message", isOn: $showThankYouMessage)
                    .padding()
                
                if showThankYouMessage {
                    Text("Thanks for visiting Little Lemon!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
            }
            
            List {
                Text("We offer \(menuItems.count) menu items.")
                    .multilineTextAlignment(.center)
                    .font(.title2)
                    .bold()
                
                ForEach(menuItems.sorted(by: {$0.key < $1.key}), id: \.key){
                    (name,price) in
                    HStack{
                        VStack{
                            Text(name)
                                .bold()
                            Text("$ \(price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                                .italic()
                        }
                        Spacer()
                        if price > premiumPrice {
                            HStack{
                                Image(systemName: "star.fill")
                                Text("Premium")
                                    .font(.caption)
                            }
                            .font(.caption)
                            .foregroundColor(.orange)
                            .padding()
                            .background(Color.orange.opacity(0.1))
                            .cornerRadius(10)
                        }else if price < valuePrice {
                            HStack{
                                Image(systemName: "dollarsign.ring")
                                Text("Value")
                                    .font(.caption)
                            }
                            .font(.caption)
                            .foregroundColor(.green)
                            .padding()
                            .background(Color.green.opacity(0.1))
                            .cornerRadius(10)
                        }
                    }
                }
            }
            
        }
    }
    
}

#Preview {
    MenuView()
}
