//
//  Doctor Login View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI
import SwiftData

struct Doctor_Login_View: View {
    
    @Query private var DoctorData: [Doctor_Data]
    @Environment(\.modelContext) var Context
    
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var loginError: Bool = false
    @State private var loginSuccess: Doctor_Data? = nil
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Doctor Login")
                    .font(.title)
                    .bold()
                Text("Please enter your username and password.")
                    .font(.title3)
                TextField("Username", text: $UserName)
                    .frame(width: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                SecureField("Password", text: $Password)
                    .frame(width: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button {
                    Login()
                } label: {
                    Text("Login")
                        .frame(width: 200, height: 30)
                        .background(Color.accentColor)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                if loginError {
                    Text("Invalid username or password.")
                        .foregroundStyle(Color.red)
                }
                Divider()
                Text("Forgot your password?")
                    .font(.headline)
                    .bold()
                Text("Login as administrator and check your password.")
                Text("Don't have an account?")
                    .font(.headline)
                    .bold()
                Text("Create an accout from the administrator page.")
                NavigationLink {
                    ContentView()
                } label: {
                    Text("Click here to return to the main page.")
                }
            }
            .padding()
            .navigationDestination(item: $loginSuccess) { doctor in
                Doctor_Home_View(Doctor: doctor)
            }
        }
    }
    private func Login(){
        if let doctor = DoctorData.first(where: { $0.UserName == UserName && $0.Password == Password }) {
            loginSuccess = doctor
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
