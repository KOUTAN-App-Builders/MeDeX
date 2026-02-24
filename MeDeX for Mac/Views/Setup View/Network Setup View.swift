//
//  Network Setup View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2026/02/21.
//

import SwiftUI

struct Network_Setup_View: View {
    
    @State private var IPAddress: String = ""
    @State private var PortNumber: String = ""
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var showPassword: Bool = false
    @State private var connectionAvailability: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Network Setup")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            .padding()
            Text("This setup will be required on all devices using MeDeX.")
                .bold()
                .foregroundStyle(Color.red)
                .padding(.bottom)
            Text("Server Info:")
                .font(.headline)
                .padding(.trailing, 300)
            HStack{
                Text("IP Address:")
                TextField("0.0.0.0", text: $IPAddress)
                    .frame(width: 200)
                    .padding(.horizontal)
                Text("Port:")
                TextField("3000", text: $PortNumber)
                    .frame(width: 100)
            }
            Divider()
                .padding()
            Text("Credentials:")
                .font(.headline)
                .padding(.trailing, 300)
            HStack{
                Text("Username:")
                TextField("", text: $UserName)
                    .frame(width: 300)
            }
            HStack{
                Text("Password:")
                if showPassword == true{
                    TextField("", text: $Password)
                        .frame(width: 300)
                }else{
                    SecureField("", text: $Password)
                        .frame(width: 300)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            Divider()
            HStack{
                Button {
                    connectionAvailability.toggle()
                } label: {
                    Text("Click here to check the connectivity")
                }
                Group{
                    Image(systemName: connectionAvailability ? "checkmark.circle" : "xmark.circle")
                    Text(connectionAvailability ? "Connection Succeeded" : "Unable to connect")
                }
                .foregroundStyle(connectionAvailability ? Color.green : Color.red)
            }
            NavigationLink {
                Basic_Instructions_View()
            } label: {
                Text("Confirm Server Settings")
                    .frame(width: 200, height: 20)
                    .background(Color.accent)
                    .foregroundStyle(Color.white)
            }
        }
        Spacer()
        #if DEBUG
        VStack{
            NavigationLink {
                Administrator_Login_View()
            } label: {
                Text("Click here to skip Network Setup")
                    .frame(width: 300, height: 25)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .background(Color.red)
                    .foregroundStyle(Color.white)
            }
            HStack{
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundStyle(Color.red)
                Text("The NavigationLink above is for DEMO PURPOSES ONLY.")
                    .foregroundStyle(Color.red)
                    .font(.headline)
                    .bold()
            }
                Text("MUST NOT BE PRESSED OTHERWISE.")
                .foregroundStyle(Color.red)
                .font(.headline)
                .bold()
        }
        #endif
    }
}

#Preview {
    Network_Setup_View()
}
