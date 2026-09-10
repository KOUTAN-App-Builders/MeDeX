//
//  New Record Entry View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/10.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Record_Entry_View: View {
    
    @Bindable var patient: Patient_Data
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    @State private var diagnosis: String = ""
    @State private var symptoms: String = ""
    @State private var prescription: String = ""
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            HStack{
                Text("Symptoms: ")
                TextEditor(text: $symptoms)
            }
            HStack{
                Text("Diagnosis: ")
                TextEditor(text: $diagnosis)
            }
            HStack{
                Text("Prescription: ")
                TextEditor(text: $prescription)
            }
        }
        .navigationTitle("Create new record")
    }
    func addNewRecord(){
        let newRecord = Patient_Clinical_Record(Date: Date(), Patient: patient, ClinicalDepartment: department, Doctor: doctor, Diagnosis: diagnosis, Symptoms: symptoms, Prescription: prescription)
        context.insert(newRecord)
    }
}

/*#Preview {
    New_Record_Entry_View()
}*/
