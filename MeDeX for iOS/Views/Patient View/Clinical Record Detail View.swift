//
//  Clinical Record Detail View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/08/06.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Clinical_Record_Detail_View: View {
    
    @Bindable var record: Patient_Clinical_Record
    
    var body: some View {
        Form{
            Section("Your Information (Make sure this is correct)") {
                Text("Patient Name: \(record.Patient.Name)")
                Text("Department: \(record.ClinicalDepartment.DepartmentName)")
                Text("Doctor: \(record.Doctor.UserName)")
                Text("Date: ") + Text(record.Date, format: .dateTime)
            }
            Section("Details") {
                Text("Symptoms: \(record.Symptoms)")
                Text("Diagnosis: \(record.Diagnosis)")
                Text("Prescription: \(record.Prescription)")
            }
        }
    }
}

/*#Preview {
    Clinical_Record_Detail_View()
}
*/
