//
//  ReservationForm.swift
//  LemonRestaraunt
//
//  Created by Wendell Richards on 10/17/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name: String = ""
    @State private var guestCount = 0
    @State private var fieldChanged = false
    @State private var reservationDate = Date()
    @State private var allergies = ""
    @State private var showSummary = false
    @State private var dateTouched = false
    private let today = Date()
    
    
    var body: some View {
        NavigationStack {
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
                    if guestCount > 8 {
                        Text("For parties larger than 8, we will call to confirm")
                            .foregroundStyle(.yellow)
                    }else if guestCount >= 5 && guestCount <= 8 {
                        Text("For large parties, please arrive 10 minutes early")
                            .foregroundStyle(.blue)
                    }
                    DatePicker("Date", selection: $reservationDate, displayedComponents: [.date, .hourAndMinute])
                        .onChange(of: reservationDate){ oldDate, newDate in dateTouched = true
                            
                        }
                    if reservationDate <= today && dateTouched {
                        Text("Please select a valid date")
                            .foregroundStyle(.red)
                    }
                    
                    TextField("Allergies", text: $allergies)
                        .textFieldStyle(.roundedBorder)
                    Button("Confirm Reservation"){
                        if !name.isEmpty {
                           showSummary = true
                        }
                    }
                    .disabled(name.isEmpty || name == " " || guestCount <= 0 )
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            name: $name,
                            date: $reservationDate,
                            guests: $guestCount,
                            allergiesNotes: $allergies)
                    }
                }
               
            }
        }
    }
}

#Preview {
   ReservationForm()
}
