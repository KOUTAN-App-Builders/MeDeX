//
//  New Record Entry View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/13.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Record_Entry_View: View {
    
    @Bindable var patient: Patient_Data
    @Environment(\.modelContext) var Context
    @State private var Diagnosis: String = ""
    @State private var Symptoms: String = ""
    @State private var Prescription: String = ""
    
    var body: some View {
        Form{
            Section(header: Text("New Record Entry").font(.title2).bold()) {
                HStack{
                    Text("Diagnosis:")
                        .padding(.bottom, 50)
                    TextEditor(text: $Diagnosis)
                        .frame(width: 400, height: 80)
                }
                HStack{
                    Text("Symptoms:")
                        .padding(.bottom, 50)
                        .padding(.leading, -5)
                    TextEditor(text: $Symptoms)
                        .frame(width: 400, height: 80)
                }
                HStack{
                    Text("Prescriptions:")
                        .padding(.bottom, 50)
                        .padding(.leading, -20)
                    TextEditor(text: $Prescription)
                        .frame(width: 400, height: 80)
                }
            }
            .padding()
        }
        .padding()
    }
}

#Preview(traits: .sampleData) {
    New_Record_Entry_View(patient: Patient_Data(Name: "George Smith", Password: "Password", Age: 45, Sex: "male", BloodType: "AB", Height: 170.5, Weight: 65.5, PreviousIllnesses: "", finalUpdatedDate: Date()))
}
