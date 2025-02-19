//
//  Administrator Setup View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/23.
//

import SwiftUI

struct Administrator_Setup_View: View {
    
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var PasswordConfirmation: String = ""
    
    var body: some View {
        VStack{
            HStack{
                Text("Administrator Setup")
                    .font(.title)
                    .bold()
                Spacer()
            }
            Text("Please set up the administrator account.")
                .font(.title3)
                .padding()
            TextField("User Name", text: $UserName)
                .frame(width: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            SecureField("Password", text: $Password)
                .frame(width: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            SecureField("Type Password again to confirm.", text: $PasswordConfirmation)
                .frame(width: 300)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            NavigationLink {
                Basic_Instructions_View()
            } label: {
                Text("Complete Administrator Setup")
                    .frame(width: 200, height: 30)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
    }
}

#Preview {
    Administrator_Setup_View()
}
