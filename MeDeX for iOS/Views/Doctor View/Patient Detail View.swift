//
//  Patient Detail View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/10.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Detail_View: View {
    
    @Bindable var patient: Patient_Data
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    
    var body: some View {
        Form{
            Section("About patient") {
                Text("Age: \(Calendar.current.dateComponents([.year], from: patient.BirthDate, to: Date()).year ?? 0)")
                Text("Sex: \(patient.Sex.rawValue)")
                Text("Bloodtype: \(patient.BloodType.rawValue)")
                Text("Height: \(patient.Height)cm")
                Text("Weight: \(patient.Weight)kg")
                Text("Previous Illnesses: \(patient.PreviousIllnesses!)")
            }
            Section("Clinical Records") {
                List(patient.ClinicalRecord){ rec in
                    VStack{
                        Text(rec.Diagnosis) // Probably summarize with Apple Intelligence in future updates
                            .font(.title)
                        Text(rec.ClinicalDepartment.DepartmentName)
                        Text(rec.Date, style: .date)
                    }
                }
            }
        }
        .navigationTitle(patient.Name)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    New_Record_Entry_View(patient: patient, doctor: doctor, department: department)
                } label: {
                    Image(systemName: "plus")
                }

            }
        }
    }
}

/*#Preview(traits: .sampleData) {
    Patient_Detail_View()
}*/
