//
//  Full Patient List View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import SwiftUI
import SwiftData

struct Full_Patient_List_View: View {
    
    @Query(sort: \Patient_Data.Name, order: .forward) private var PatientData: [Patient_Data]
    @Query private var PatientClinicalRecord: [Patient_Clinical_Record]
    
    var body: some View {
        List(PatientData){ patient in
            VStack {
                Text(patient.Name)
                    .font(.title)
                Text("Last visit: ")
            }
        }
    }
}

#Preview {
    Full_Patient_List_View()
}
