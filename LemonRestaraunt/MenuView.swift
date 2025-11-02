//
//  MenuView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/23/25.
//

import SwiftUI

struct MenuView: View {
    //Variable Section
    
    let menuItemsImproved = [
        MenuItem(name: "Pizza", description: "Cheese and pepperoni", price: 9.99),
        MenuItem(name: "Steak", description: "Grilled to perfection", price: 15.0),
        MenuItem(name: "Pasta", description: "Spaguetti", price: 6.0),
        MenuItem(name: "Caesar Salad", description:"Romaine lettuce with cremy Caesar dreesing", price: 10.99),
        MenuItem(name: "Soup", description: "Warm and comforting", price: 4.75),//NEW
        MenuItem(name: "Burger", description: "Grilled beef with cheese", price: 11.00), // NEW
        MenuItem(name: "Fish Tacos", description: "Crispy fish with spicy mayo", price: 10.25) // NEW
    ]
    
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
    
    var sortedMenu : [MenuItem]{
        menuItemsImproved.sorted {$0.name < $1.name}
    }
    
    var filteredMenu:[MenuItem]{
        showPremium ? menuItemsImproved.filter {$0.price >= 10} : menuItemsImproved
    }
    
    var averagePrice: Double {
        let total = filteredMenu.map {$0.price}.reduce(0, +)
        
        return total / Double(filteredMenu.count)
    }
    
    var regularItemCounter: Int {
        filteredMenu.filter{$0.price < 10}.count
    }
    
    var premiumItemCounter: Int {
        filteredMenu.filter{$0.price >= 10}.count
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
            
            Text("Average Price: $\(averagePrice, specifier: "%.2f")")
                .font(.footnote)
                .foregroundColor(.secondary)
            
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
                
                ForEach(filteredMenu, id: \.id){
                    (item) in
                    HStack{
                        VStack(alignment: .leading){
                            Text(item.name)
                                .bold()
                            Text(item.description)
                            Text("$ \(item.price, specifier: "%.2f")")
                                .foregroundColor(.secondary)
                                .italic()
                                
                        }
                        Spacer()
                        if item.price >= premiumPrice {
                            PremiumBadge()
                        }else if item.price < valuePrice {
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
                Footer(premiumItemCounter: premiumItemCounter,  regularItemCounter: regularItemCounter, averagePrice: averagePrice)
        }
    }
    


#Preview {
    MenuView()
}
