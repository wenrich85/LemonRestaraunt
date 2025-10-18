//
//  ReservationForm.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/17/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name = ""
    @State private var guestCount = 0
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("RESERVATION DETAILS")){
                    TextField("Username", text: $name)
                    Stepper("Guests:  \(guestCount)", value:$guestCount, in: 1...10)
                }
            }
        }
        Text(name.isEmpty || guestCount <= 0 ? "" : "Reservation for \(name), party of \(guestCount)")
    }
}

#Preview {
    ReservationForm()
}
