//
//  Patients for Today View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/01.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patients_for_Today_View: View {
    
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    //@Query private var filteredPatients: [Patient_Data]
    @Query private var consultations: [Consultation_Request_Data]
    
    var body: some View {
        VStack{
            if consultations.count == 0{
                Text("There are no patients for today.")
                    .font(.title)
            }else{
                List(consultations){ req in
                    NavigationLink {
                        Patient_Detail_View(patient: req.patient, doctor: doctor, department: department)
                    } label: {
                        Text(req.patient.Name)
                            .font(.title)
                        Text(req.symptoms) //Probably summarize with Apple Intelligence in future updates
                        Text(req.requestDate, format: .dateTime)
                        // Will add appointment date & reason(summarized), if it's an appointment. Coming in future updates.
                    }
                }
            }
        }
    }
}

/*#Preview {
    Patients_for_Today_View()
}*/
