//
//  Appointment Detail View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/08/06.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Appointment_Detail_View: View {
    
    @Bindable var appointment: Patient_Appointment_Data_Model
    
    var body: some View {
        Form{
            Section("Appointment Info") {
                Text("Patient: \(appointment.patient.Name)")
                Text("Department: \(appointment.appointmentClinicalDepartment.DepartmentName)")
                Text("Doctor: \(appointment.appointmentDoctor.UserName)")
                Text("Date: ") + Text(appointment.appointmentDate, format: .dateTime)
            }
            Section("Details") {
                Text("Purpose: \(appointment.appointmentReason)")
                Text("Is it an emergency?: ") + Text(appointment.isAnEmergency ? "Yes" : "No")
            }
        }
    }
}

/*#Preview {
    Appointment_Detail_View()
}*/
