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
                        Patient_Data_Detail_View(patient: Patient)
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
    
    @Bindable var patient: Patient_Data
    @State private var showPassword: Bool = false
    @Environment(\.modelContext) var Context
    @Environment(\.dismiss) var Dismiss
    
    var body: some View {
        VStack{
            HStack{
                Text("Patient Name:")
                TextField("Name", text: $patient.Name)
            }
            HStack{
                Text("Password:")
                if showPassword == true{
                    TextField("Password", text: $patient.Password)
                }else{
                    SecureField("Password", text: $patient.Password)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            HStack{
                Text("Sex:")
                TextField("30", text: $patient.Sex)
                Text("Bloodtype:")
                TextField("AB", text: $patient.BloodType)
            }
            Divider()
            Text("Medical records can't be edited here.")
                .font(.title)
        }
    }
}


struct Patient_Data_Creation_View: View {
    
    @Query private var PatientData: [Patient_Data]
    @Environment(\.modelContext)var Context
    
    var body: some View {
        Text("Patient Data Creation is only allowed in the patient view.")
            .font(.largeTitle)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patient_Data_List_View()
    }
}
