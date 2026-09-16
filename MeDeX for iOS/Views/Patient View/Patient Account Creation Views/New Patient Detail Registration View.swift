//
//  New Patient Detail Registration View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/26.
//

import SwiftUI
import MeDeXDataManager

struct New_Patient_Detail_Registration_View: View {
    
    @Bindable var patientDraft: PatientDraft
    @Binding var showSheet: Bool
    @Environment(\.dismiss) var dismiss
    @State private var numberFormatter: NumberFormatter = {
       var numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter
    }()
    @State private var progress: Double = 0.66
    
    var body: some View {
        VStack{
            Text("Please fill in the folloing fields to continue your registration.")
            DatePicker("Please select your birthdate.", selection: $patientDraft.BirthDate, displayedComponents: .date)
                .datePickerStyle(.automatic)
            HStack{
                Text("Sex: ")
                Picker("", selection: $patientDraft.Sex) {
                    ForEach(sex.allCases, id: \.self){ sex in
                        Text(sex.rawValue.capitalized).tag(sex)
                    }
                }
            }
            HStack{
                Text("Bloodtype: ")
                Picker("", selection: $patientDraft.Bloodtype) {
                    ForEach(bloodType.allCases, id: \.self){ bloodtype in
                        Text(bloodtype.rawValue.capitalized).tag(bloodtype)
                    }
                }
            }
            HStack{
                Text("Height: ")
                TextField("170", value: $patientDraft.Height, formatter: numberFormatter)
                    .keyboardType(.decimalPad)
            }
            HStack{
                Text("Weight: ")
                TextField("60", value: $patientDraft.Weight, formatter: numberFormatter)
            }
            HStack{
                Button {
                    dismiss()
                } label: {
                    Text("Go back")
                        .frame(width: 200, height: 55)
                        .background(Color.gray)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                NavigationLink {
                    New_Patient_Record_Registration_View(patientDraft: patientDraft, showSheet: $showSheet)
                } label: {
                    Text("Next")
                        .frame(width: 200, height: 55)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .padding()
                }
            }
            HStack{
                Spacer()
                Text("Progress: 2 / 3")
                Spacer()
            }
            ProgressView(value: progress)
                .padding(.horizontal)
        }
        .padding(.horizontal)
        .navigationTitle("Add Personal Details")
    }
}

/*#Preview {
    New_Patient_Detail_Registration_View()
}*/
