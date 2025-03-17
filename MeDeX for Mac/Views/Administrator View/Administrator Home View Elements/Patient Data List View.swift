//
//  Patient Data List View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI
import SwiftData

struct Patient_Data_List_View: View {
    
    @Query var PatientData: [Patient_Data]
    @Environment(\.modelContext)var Context
    
    var body: some View {
        ZStack{
            List(PatientData){ Patient in
                NavigationLink{
                    Doctor_Data_Detail_View()
                }label:{
                    VStack{
                        Text(Patient.Name)
                            .font(.title)
                            .bold()
                        Text("Last Updated: \(Patient.finalUpdatedDate, style: .date)")
                            .font(.caption)
                    }
                    .padding()
                }
            }
            if PatientData.isEmpty{
                Text("Patient Data is not added yet.")
                    .font(.title)
                    .bold()
            }
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patient_Data_List_View()
    }
}
