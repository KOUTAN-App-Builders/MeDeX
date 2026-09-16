//
//  Full Patient List View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/01.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Full_Patient_List_View: View {
    
    @Query private var patients: [Patient_Data]
    @Query private var records: [Patient_Clinical_Record]
    @State private var searchName: String = ""
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    
    var body: some View {
        VStack{
            List(patients){ patient in
                NavigationLink {
                    Patient_Detail_View(patient: patient, doctor: doctor, department: department)
                } label: {
                    VStack{
                        Text(patient.Name)
                            .font(.title)
                            .bold()
                        if patient.ClinicalRecord.isEmpty {
                            Text("No record yet")
                        }else{
                            Text("Last visited: ") + Text(patient.ClinicalRecord.last!.Date, style: .date)
                        }
                    }
                }
            }
            .searchable(text: $searchName, prompt: Text("Search by name."))
        }
    }
}

/*#Preview {
    Full_Patient_List_View()
}*/
