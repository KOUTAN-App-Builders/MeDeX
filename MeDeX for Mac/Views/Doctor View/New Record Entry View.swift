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
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    @Environment(\.modelContext) var Context
    @Environment(\.dismiss) var Dismiss
    @State private var Diagnosis: String = ""
    @State private var Symptoms: String = ""
    @State private var Prescription: String = ""
    
    var body: some View {
        VStack{
            Form{
                Section(header: Text("New Record Entry")) {
                    HStack{
                        Text("Diagnosis:")
                            .padding(.bottom, 50)
                        TextEditor(text: $Diagnosis)
                            .frame(width: 400, height: 80)
                            .border(Color.gray, width: 1)
                    }
                    HStack{
                        Text("Symptoms:")
                            .padding(.bottom, 50)
                            .padding(.leading, -5)
                        TextEditor(text: $Symptoms)
                            .frame(width: 400, height: 80)
                            .border(Color.gray, width: 1)
                    }
                    HStack{
                        Text("Prescriptions:")
                            .padding(.bottom, 50)
                            .padding(.leading, -20)
                        TextEditor(text: $Prescription)
                            .frame(width: 400, height: 80)
                            .border(Color.gray, width: 1)
                    }
                }
                .padding()
            }
            Button {
                save_record()
                Dismiss()
            } label: {
                Text("Save")
                    .background(Color.accent)
                    .frame(width: 200, height: 55)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
        .padding()
    }
    func save_record(){
        let newRecord = Patient_Clinical_Record(Date: Date(), Patient: patient, ClinicalDepartment: department, Doctor: doctor, Diagnosis: Diagnosis, Symptoms: Symptoms, Prescription: Prescription)
        Context.insert(newRecord)
    }
}

/*#Preview(traits: .sampleData) {
    New_Record_Entry_View(patient: Patient_Data(Name: "George Smith", Password: "Password", BirthDate: Date(), Sex: .male, BloodType: .AB, Height: 170.5, Weight: 65.5, PreviousIllnesses: "", finalUpdatedDate: Date()))
}*/
