//
//  DessertView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/25/25.
//

import SwiftUI

struct DessertView: View {
    //create a dessert dictionary 5 elements
    let dessertItems = [
        "Cake":4.25,
        "Ice Cream":5.90,
        "Milkshake":3.45,
        "Candy":2.56,
        "Churros":8.25,
        
    ]
    
    var premiumPrice = 5.0
    var showPremium = false
    
    var filteredMenu:[(name:String, price:Double)]{
        dessertItems.filter{ !showPremium || $0.value >= premiumPrice }
            .map{(key, value) in (name: key, price: value)}
    }
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size:32))
                Text("Desserts")
                    .font(.title)
                    .bold()
            }
        }
        List{
            ForEach(dessertItems.sorted(by: { $0.key < $1.key }), id: \.key){
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
                    if price >= 5 {
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
                    }else if price < 3 {
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
    DessertView()
}
