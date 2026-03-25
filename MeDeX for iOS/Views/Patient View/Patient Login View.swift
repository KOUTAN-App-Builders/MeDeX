//
//  Patient Login View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2026/03/02.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Login_View: View {
    
    @Query private var patients: [Patient_Data]
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var showPassword: Bool = false
    @State private var loginSuccess: Patient_Data? = nil
    @State private var loginError: Bool = false
    
    var body: some View {
        VStack{
            Text("Please type in your credentials to login.")
            HStack{
                TextField("Name", text: $UserName)
                    .frame(width: 200)
            }
            HStack{
                Text("Pasword:")
                if showPassword == true{
                    TextField("", text: $Password)
                        .frame(width: 200)
                }else{
                    SecureField("", text: $Password)
                        .frame(width: 200)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            Button {
                login()
            } label: {
                Text("Login")
                    .frame(width: 200, height: 55)
                    .background(Color.blue)
                    .foregroundStyle(Color.white)
                    .padding()
            }
            if loginError{
                Text("Invalid Username or Password.")
                    .foregroundStyle(Color.red)
            }
            Divider()
            Text("Don't have your account yet?")
            Text("Click on the button below for registration.")
            NavigationLink {
                New_Patient_Credential_Registration_View()
            } label: {
                Text("Click here for registration.")
            }

        }
        .navigationTitle("Patient Login")
        .navigationBarBackButtonHidden()
        .navigationDestination(item: $loginSuccess) { patient in
            Patient_Home_View(patient: patient)
                .navigationBarBackButtonHidden()
        }
        .padding()
    }
    func login(){
        if let user = patients.first(where: { $0.Name == UserName && $0.Password == Password }) {
            loginSuccess = user
        }else{
            loginError = true
        }
    }
}

#Preview {
    Patient_Login_View()
}
