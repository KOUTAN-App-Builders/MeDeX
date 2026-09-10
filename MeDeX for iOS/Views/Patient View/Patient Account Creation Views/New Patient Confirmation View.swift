//
//  New Patient Confirmation View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/07.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Patient_Confirmation_View: View {
    
    @Bindable var patientDraft: PatientDraft
    @Binding var showSheet: Bool
    @State private var didCheck: Bool = false
    @Environment(\.modelContext) var context
    
    var body: some View {
        VStack{
            Text("Please check if all information is correct.")
            Form{
                Section("Basic Information") {
                    Text("Name: \(patientDraft.Name)")
                    Text("Password: \(String(repeating: "•", count: patientDraft.Password.count))")
                }
                Section("Personal Information") {
                    Text("BirthDate: ") + Text(patientDraft.BirthDate, format: .dateTime)
                    Text("Sex: \(patientDraft.Sex.rawValue)")
                    Text("Bloodtype: \(patientDraft.Bloodtype.rawValue)")
                    Text("Height: \(patientDraft.Height)")
                    Text("Weight: \(patientDraft.Weight)")
                }
                Section("Special Notes") {
                    Text("Previous Illnesses: \(patientDraft.PreviousIllnesses)")
                }
            }
            HStack{
                Spacer()
                Text("Return and edit: ")
                Spacer()
            }
            HStack{
                Spacer()
                NavigationLink(destination: New_Patient_Credential_Registration_View(patientDraft: patientDraft, showSheet: $showSheet)) {
                    Text("Credentials")
                }
                Spacer()
                NavigationLink(destination: New_Patient_Detail_Registration_View(patientDraft: patientDraft, showSheet: $showSheet)) {
                    Text("Personal Info")
                }
                Spacer()
                NavigationLink(destination: New_Patient_Record_Registration_View(patientDraft: patientDraft, showSheet: $showSheet)) {
                    Text("Special Notes")
                }
                Spacer()
            }
            HStack{
                Button {
                    didCheck.toggle()
                } label: {
                    Image(systemName: didCheck ? "checkmark.square.fill" : "square")
                }
                HStack(spacing: 4){
                    Text("I checked all the information and agree to ")
                    NavigationLink {
                        Terms_and_Conditions_View()
                    } label: {
                        Text("the terms and conditions")
                            .foregroundStyle(Color.blue)
                            .underline()
                    }
                    Text(".")
                }
            }
            Button {
                savePatientData()
                showSheet = false
            } label: {
                Text("Save and Close")
                    .frame(width: 200, height: 55)
                    .backgroundStyle(Color.blue)
                    .foregroundStyle(Color.white)
                    .padding()
            }
            .disabled(!didCheck)
        }
        .navigationTitle("Confirmation View")
    }
    func savePatientData(){
        let newPatient = Patient_Data(Name: patientDraft.Name, Password: patientDraft.Password, BirthDate: patientDraft.BirthDate, Sex: patientDraft.Sex, BloodType: patientDraft.Bloodtype, Height: patientDraft.Height, Weight: patientDraft.Weight, PreviousIllnesses: patientDraft.PreviousIllnesses, finalUpdatedDate: Date())
        context.insert(newPatient)
    }
}

/*#Preview {
 New_Patient_Confirmation_View()
 }*/
