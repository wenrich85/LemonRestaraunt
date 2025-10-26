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
        "Chicken Tenders":6.99,
        "Cheese Burger":5.45,
        "French Fries":3.50,
        "Hamburger":11.00,
        "Keylime Pie":8.50,
        
    ]
    let premiumPrice = 10.0
    let valuePrice = 7.0
    @State private var showPremium = false
    @State private var showThankYouMessage = false
    @State private var showDessert = false
    
    //computer properties
    //theu do not store a value
    // each access recomputes the value
    
    /*
     var propertyName: Type {
        return the calculated value
     }
     */
    
    var sortedMenu : [(name: String, price:Double)]{
        menuItems.sorted {$0.value < $1.value }
            .map{(key, value) in (name: key, price: value)}
    }
    
    var filteredMenu:[(name:String, price:Double)]{
        menuItems.filter{ !showPremium || $0.value >= premiumPrice }
            .map{(key, value) in (name: key, price: value)}
    }
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
                Toggle("Show only premium items", isOn: $showPremium)
                    .padding()
                
                if showPremium {
                    Text("You will display only premium items")
                        .font(.title3)
                        .foregroundColor(.green)
                  
                    }
                Button("View Desserts")
                {
                    showDessert.toggle()
                }
                .foregroundColor(.black)
                .padding()
                .background(Color.green.opacity(0.3))
                .cornerRadius(10)
                .sheet(isPresented: $showDessert){
                    DessertView()
                }
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
                    .font(.title2)
                    .bold()
                
                ForEach(filteredMenu, id: \.name){
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
                        if price >= premiumPrice {
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
    


#Preview {
    MenuView()
}
