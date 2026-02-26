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
    @State private var searchName: String = ""
    
    var body: some View {
        List(filteredPatients(patients: PatientData, searchName: searchName)){ patient in
            NavigationLink{
                Patient_Detail_View(patient: patient)
            }label: {
                VStack {
                    Text(patient.Name)
                        .font(.title)
                        .bold()
                    Text("Last visit: ")
                }
            }
            .searchable(text: $searchName)
        }
    }
    func filteredPatients(patients: [Patient_Data] , searchName: String) -> [Patient_Data]{
        guard !searchName.isEmpty else { return patients }
        return patients.filter { patient in
            patient.Name.contains(searchName)
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Full_Patient_List_View()
    }
}
