//
//  Administrator Login View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Administrator_Login_View: View {
    
    @Query private var AdminData: [Administrator_Data]
    @Environment(\.modelContext) var Context
    @State private var Username: String = ""
    @State private var Password: String = ""
    @State private var loginSuccess: Administrator_Data? = nil
    @State private var loginError: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("Administrator Login")
                    .font(.title)
                    .bold()
                Text("Please enter the administrator username and password.")
                    .font(.title3)
                TextField("Username", text: $Username)
                    .frame(width: 300)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                SecureField("Password", text: $Password)
                    .frame(width: 300)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
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
                }
                NavigationLink {
                    ContentView()
                } label: {
                    Text("Click here to return to the main page.")
                }
            }
            .padding()
            .navigationDestination(item: $loginSuccess) { admin in
                Administrator_Home_View(Admin: admin)
                    .navigationBarBackButtonHidden()
            }
        }
    }
    private func Login(){
        if let user = AdminData.first(where: { $0.UserName == Username && $0.Password == Password }) {
            loginSuccess = user
        }else{
            loginError = true
        }
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Administrator_Login_View()
    }
}
