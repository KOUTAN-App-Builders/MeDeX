//
//  Full Patient List View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Full_Patient_List_View: View {
    
    @Query(sort: \Patient_Data.Name, order: .forward) private var PatientData: [Patient_Data]
    @Query private var PatientClinicalRecord: [Patient_Clinical_Record]
    @State private var searchName: String = ""
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    
    var body: some View {
        List(filteredPatients(patients: PatientData, searchName: searchName)){ patient in
            NavigationLink{
                Patient_Detail_View(patient: patient, doctor: doctor, department: department)
            }label: {
                VStack {
                    Text(patient.Name)
                        .font(.title)
                        .bold()
                    if patient.ClinicalRecord.isEmpty{
                        Text("No record yet")
                    }else{
                        Text("Last visit: ") + Text(patient.ClinicalRecord.last!.Date, format: .dateTime)
                    }
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

/*#Preview(traits: .sampleData) {
    NavigationStack{
        Full_Patient_List_View()
    }
}*/
