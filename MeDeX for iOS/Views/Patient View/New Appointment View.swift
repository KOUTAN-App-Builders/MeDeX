//
//  New Appointment View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/08/06.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Appointment_View: View {
    
    //@Bindable var patient: Patient_Data
    
    var body: some View {
        VStack{
            Text("Fill in the following form in order to make a new appointment.")
            Spacer()
            Form{
                Section(header: Text("Patient Info (review only)")){
                    Text("Name: ")
                    Text("Birthdate:")
                    Text("Sex: ")
                }
                Section(header: Text("Date and Time")) {
                    
                }
                Section(header: Text("Department and Purpose")) {
                    
                }
            }
            Button {
                
            } label: {
                Text("Submit")
                    .bold()
                    .frame(width: 200, height: 55)
                    .background(Color.background)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Label("Review your appointment before submitting.", systemImage: "exclamationmark.triangle")
                .foregroundStyle(Color.red)
                .bold()
        }
        .navigationTitle("New Appointment")
    }
}

#Preview {
    NavigationStack{
        New_Appointment_View()
    }
}
