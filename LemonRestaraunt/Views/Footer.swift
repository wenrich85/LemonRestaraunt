//
//  Footer.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/30/25.
//
import SwiftUI

struct Footer: View {
    @State var premiumItemCounter: Int = 0
    @State var regularItemCounter: Int = 0
    @State var averagePrice: Double = 0
    var body: some View {
        Text("Premium: \(premiumItemCounter) | Regular:  \(regularItemCounter) |   $\(averagePrice, specifier: "%.2f")")
            .font(.subheadline)
            .padding()
            .background(.yellow.opacity(0.1))
            .cornerRadius(18)
    }
}

#Preview {
    Footer()
}
