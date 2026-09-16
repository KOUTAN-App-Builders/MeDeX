//
//  New Patient Credential Registration View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/25.
//

import SwiftUI
import MeDeXDataManager

struct New_Patient_Credential_Registration_View: View {
    
    @Bindable var patientDraft: PatientDraft
    @Binding var showSheet: Bool
    @State private var showPassword: Bool = false
    @State private var Password: String = ""
    @State private var PasswordConfirmation: String = ""
    @State private var showPasswordConfirmation: Bool = false
    @Environment(\.dismiss) var Dismiss
    @State private var passwordMatched: Bool = false
    @State private var passwordMatchError: Bool = false
    @State private var progress: Double = 0.33
    
    var body: some View {
        VStack{
            Text("Please fill in the following fields to create your new account.")
            HStack{
                Text("Name:")
                TextField("", text: $patientDraft.Name)
                    .frame(width: 200)
                    .padding()
            }
            HStack{
                Text("Password:")
                if showPassword == true {
                    TextField("", text: $Password)
                        .frame(width: 200)
                        .padding()
                }else{
                    SecureField("", text: $Password)
                        .frame(width: 200)
                        .padding()
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            HStack{
                Text("Password Confirmation:")
                if showPasswordConfirmation == true {
                    TextField("", text: $PasswordConfirmation)
                        .frame(width: 200)
                        .padding()
                }else{
                    SecureField("", text: $PasswordConfirmation)
                        .frame(width: 200)
                        .padding()
                }
                Button {
                    showPasswordConfirmation.toggle()
                } label: {
                    Image(systemName: showPasswordConfirmation ? "eye.slash" : "eye")
                }
            }
            HStack{
                if passwordMatchError {
                    Image(systemName: "exclamationmark.triangle")
                    Text("Name must not be empty and passwords must match.")
                        .foregroundStyle(Color.red)
                }
            }
            HStack{
                Button {
                    Dismiss()
                } label: {
                    Text("Cancel")
                        .frame(width: 200, height: 55)
                        .background(Color.gray)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                Button {
                    checkPasswordMatch()
                } label: {
                    Text("Next")
                        .frame(width: 200, height: 55)
                        .background(Color.blue)
                        .foregroundStyle(Color.white)
                        .padding()
                }
                .disabled(patientDraft.Name.isEmpty || Password.isEmpty || PasswordConfirmation.isEmpty)
            }
            HStack{
                Spacer()
                Text("Progress: 1 / 3")
                Spacer()
            }
            ProgressView(value: progress)
                .padding(.horizontal)
        }
        .padding(.horizontal)
        .navigationTitle("Add Credentials")
        .navigationDestination(isPresented: $passwordMatched) {
            New_Patient_Detail_Registration_View(patientDraft: patientDraft, showSheet: $showSheet)
        }
    }
    func checkPasswordMatch() {
        passwordMatchError = false
        if !patientDraft.Name.isEmpty && !Password.isEmpty && Password == PasswordConfirmation {
            patientDraft.Password = Password
            passwordMatched = true
        }else{
            passwordMatchError = true
        }
    }
}

/*#Preview {
    New_Patient_Credential_Registration_View()
}*/
