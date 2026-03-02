//
//  Patient Data List View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Data_List_View: View {
    
    @Query var PatientData: [Patient_Data]
    @Environment(\.modelContext)var Context
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    Patient_Data_Creation_View()
                } label: {
                    Image(systemName: "plus")
                }
            }
            ZStack{
                List(PatientData){ Patient in
                    NavigationLink{
                        Patient_Data_Detail_View()
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
}

struct Patient_Data_Detail_View: View {
    
    @Query private var PatientData: [Patient_Data]
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}


struct Patient_Data_Creation_View: View {
    
    @Query private var PatientData: [Patient_Data]
    @Environment(\.modelContext)var Context
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patient_Data_List_View()
    }
}
