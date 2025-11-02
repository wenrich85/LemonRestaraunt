//
//  CustomerSummaryView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 11/2/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    @State private var customer =
        Customer(
            name: "Wendell",
            email: "wendell@example.com",
            isLoyaltyMember: false
        )
    var body: some View {
        VStack(){
            VStack{
                HStack(alignment: .top){
                    Text("Customer Profile")
                        .font(.title)
                }
                if customer.isLoyaltyMember{
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size:32))
                        Text("Loyalty Member")
                    }
                }
               
                

            }
            Divider()
            Spacer()
            VStack(alignment: .leading){
                HStack(alignment: .top){
                    Text("Name:")
                    Spacer()
                    Text(customer.name)
                }
                .padding()
                HStack(){
                    Text("Email:")
                    Spacer()
                    Text(customer.email)
                }
                .padding()
                HStack{
                    Toggle("Loyalty Membership:", isOn: $customer.isLoyaltyMember)
                }
                .padding()

            }
            Spacer()
        }
    }
}
#Preview {
    CustomerSummaryView()
}
