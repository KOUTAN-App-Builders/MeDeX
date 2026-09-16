//
//  Patient Home View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/25.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Home_View: View {
    
    @Bindable var patient: Patient_Data
    @Query private var Appointments: [Patient_Appointment_Data_Model]
    @Query private var Records: [Patient_Clinical_Record]
    @State private var showAppointTypeSelection: Bool = false
    
    var body: some View {
        VStack{
            Form{
                Section("Appointments") {
                    List(Appointments){ app in
                        NavigationLink {
                            Appointment_Detail_View(appointment: app)
                        } label: {
                            Text(app.appointmentNote)
                                .font(.title)
                            Text(app.appointmentDate, style: .date)
                                .font(.caption)
                        }
                    }
                }
                Section("Previous Records") {
                    List(Records){ rec in
                        NavigationLink {
                            Clinical_Record_Detail_View(record: rec)
                        } label: {
                            Text(rec.Diagnosis)
                                .font(.title)
                            Text(rec.Date, style: .date)
                                .font(.caption)
                        }
                    }
                }
            }
            NavigationLink {
                Patient_Login_View()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Logout")
                    .frame(width: 200, height: 55)
                    .bold()
                    .background(Color.black.opacity(0.05))
                    .foregroundStyle(Color.accent)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }

        }
        .navigationTitle("Hello, \(patient.Name).")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu("", systemImage: "plus") {
                    NavigationLink {
                        New_Consultation_Req_View(patient: patient)
                    } label: {
                        Text("Consult Now")
                    }
                    NavigationLink {
                        New_Appointment_View(patient: patient)
                    } label: {
                        Text("New Appointment")
                    }
                }
            }
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patient_Home_View(patient: Patient_Data(Name: "John Doe", Password: "Password", BirthDate: Date(), Sex: .male, BloodType: .AB, Height: 175.5, Weight: 65.5, PreviousIllnesses: "N/A", finalUpdatedDate: Date()))
    }
}
