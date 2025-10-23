//
//  ReservationSummaryView.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/21/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    @Binding var name: String
    @Binding var date: Date
    @Binding var guests:Int
    @Binding var allergiesNotes:String
    
    var body: some View {
        VStack(alignment: .center, spacing: 25){
            Text("Reservation Summary")
                .font(.largeTitle)
                .foregroundStyle(.green)
            Spacer()
            //addin information
            Text("Thank you, \(name), your reservation is confirmed for \(guests) people on \(date.formatted(date: .long, time: .shortened))")
                .bold()
                .padding()
            Spacer()
            
            if !allergiesNotes.isEmpty{
                Text("Note:  We will accommodate the following allergies: \(allergiesNotes)")
                    .italic()
            } else {
                Text("Note: No allergies were listed. If this is incorrect, please let us know and we will accomodate.")
                    .italic()
                    
                    
            }
            
        }
        
    }
}

//#Preview {
//    ReservationSummaryView()
//}
