//
//  New Patient Record Registration View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/09/07.
//

import SwiftUI
import MeDeXDataManager

struct New_Patient_Record_Registration_View: View {
    
    @Bindable var patientDraft: PatientDraft
    @Binding var showSheet: Bool
    @Environment(\.dismiss) var dismiss
    @State private var progress: Double = 1.0
    
    var body: some View {
        VStack{
            Text("If you have any special notes, please enter them here.")
            HStack{
                Text("Previous illnesses: ")
                TextField("", text: $patientDraft.PreviousIllnesses)
            }
            HStack{
                Button {
                    dismiss()
                } label: {
                    Text("Go Back")
                        .frame(width: 200, height: 55)
                        .background(Color.gray)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                NavigationLink {
                    New_Patient_Confirmation_View(patientDraft: patientDraft, showSheet: $showSheet)
                } label: {
                    Text("Review Info")
                        .frame(width: 200, height: 55)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .padding()
                }
            }
            HStack{
                Spacer()
                Text("Progress: 3 / 3")
                Spacer()
            }
            ProgressView(value: progress)
                .padding(.horizontal)
        }
        .padding(.horizontal)
        .navigationTitle("Add Special Notes")
    }
}

/*#Preview {
    New_Patient_Record_Registration_View()
}*/
