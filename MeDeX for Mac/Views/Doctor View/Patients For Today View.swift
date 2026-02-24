//
//  Patients For Today View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import SwiftUI
import SwiftData

struct Patients_For_Today_View: View {
    
    @Query private var PatientData: [Patient_Data]
    @Query private var AppointmentData: [Patient_Appointment_Data_Model]
    
    var body: some View {
        VStack{
            List(PatientData) { patient in
                Divider()
            }
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patients_For_Today_View()
    }
}
