//
//  ReservationForm.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/17/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name: String = ""
    @State  var guestCount = 0
    @State private var fieldChanged = false
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("RESERVATION DETAILS")){
                    TextField("Name", text: $name)
                        .textFieldStyle(.roundedBorder)
                        .onChange(of: name){ oldName, newName in
                            fieldChanged = true
                        }
                    if fieldChanged && name.isEmpty {
                        Text("Please enter your name")
                            .foregroundStyle(.red)
                    }
                    Stepper("Guests:  \(guestCount)", value:$guestCount, in: 1...10)
                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundStyle(.yellow)
                    }
                    Button("Confirm Reservation"){
                    }
                    .disabled(name.isEmpty || name == " ")
                }
               
            }
        }
        Text(name.isEmpty || guestCount <= 0 ? "" : "Reservation for \(name), party of \(guestCount)")
    }
}

#Preview {
   ReservationForm()
}
