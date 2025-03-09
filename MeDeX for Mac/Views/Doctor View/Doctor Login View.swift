//
//  Doctor Login View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI

struct Doctor_Login_View: View {
    
    @State private var UserName: String = ""
    @State private var Password: String = ""
    
    var body: some View {
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
            NavigationLink {
                Doctor_Home_View(DoctorName: UserName)
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Login")
                    .frame(width: 200, height: 30)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
            NavigationLink {
                ContentView()
            } label: {
                Text("Click here to return to the main page.")
            }
        }
    }
}

#Preview {
    Doctor_Login_View()
}
