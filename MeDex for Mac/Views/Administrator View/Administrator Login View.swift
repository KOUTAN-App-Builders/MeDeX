//
//  Administrator Login View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI

struct Administrator_Login_View: View {
    
    @State private var Username: String = ""
    @State private var Password: String = ""
    
    var body: some View {
        VStack{
            Text("Administrator Login")
                .font(.title)
                .bold()
            Text("Please enter the administrator username and password.")
                .font(.title3)
            TextField("Username", text: $Username)
                .frame(width: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            SecureField("Password", text: $Password)
                .frame(width: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            NavigationLink {
                Administrator_Home_View()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Login")
                    .frame(width: 200, height: 30)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }

        }
        .padding()
    }
}

#Preview {
    Administrator_Login_View()
}
