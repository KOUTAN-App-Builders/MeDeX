//
//  Doctor Login View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2026/03/02.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Doctor_Login_View: View {
    
    @Query private var doctors: [Doctor_Data]
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var showPassword: Bool = false
    @State private var loginSuccess: Doctor_Data? = nil
    @State private var loginError: Bool = false
    
    var body: some View {
        VStack{
            Text("Please type in your credentials to login.")
            HStack{
                Text("Username:")
                TextField("Name", text: $UserName)
                    .frame(width: 200)
            }
            HStack{
                Text("Password:")
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
            if loginError {
                Text("Invalid username or password.")
                    .foregroundStyle(Color.red)
            }
            Divider()
            Text("If you don't have an account yet, you can create one from the administrator page.")
        }
        .navigationTitle("Doctor Login")
        .navigationDestination(item: $loginSuccess) { doctor in
            Doctor_Home_View(doctor: doctor)
                .navigationBarBackButtonHidden()
        }
        
    }
    func login(){
        if let user = doctors.first(where: { $0.UserName == UserName && $0.Password == Password }) {
            loginSuccess = user
        }else{
            loginError = true
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Doctor_Login_View()
    }
}
