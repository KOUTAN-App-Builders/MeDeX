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
                            Clinical_Record_Detail_View(clinical_record: rec)
                        } label: {
                            Text(rec.Diagnosis)
                                .font(.title)
                            Text(rec.Date, style: .date)
                                .font(.caption)
                        }
                    }
                }
            }
        }
        .navigationTitle("Hello, \(patient.Name).")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Menu("", systemImage: "plus") {
                    NavigationLink {
                        New_Consultation_Req_View()
                    } label: {
                        Text("Consult Now")
                    }
                    NavigationLink {
                        New_Appointment_View()
                    } label: {
                        Text("New Appointment")
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationStack{
        Patient_Home_View(patient: Patient_Data(Name: "John Doe", Password: "Password", BirthDate: Date(), Sex: .male, BloodType: .AB, Height: 175.5, Weight: 65.5, PreviousIllnesses: "N/A", finalUpdatedDate: Date()))
    }
}
