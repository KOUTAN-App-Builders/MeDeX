//
//  Network Setup View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/23.
//

import SwiftUI
import MeDeXDataManager

struct Network_Setup_View: View {
    
    @AppStorage("server_ip") private var ipAddress: String = ""
    @AppStorage("server_port") private var port: String = ""
    @State private var UserName: String = ""
    @State private var Password: String = ""
    @State private var showPassword: Bool = false
    @State private var connectionAvailability: Bool = false
    @State private var navigation: Bool = false
    
    var body: some View {
        VStack{
            Form{
                Section(header: Text("Server Info")){
                    VStack{
                        HStack{
                            Text("IP Address:")
                            TextField("0.0.0.0", text: $ipAddress)
                        }
                        HStack{
                            Text("Port:")
                            TextField("80", text: $port)
                        }
                    }
                }
                Section(header: Text("Credentials")) {
                    VStack{
                        HStack{
                            Text("User Name:")
                            TextField("Admin", text: $UserName)
                        }
                        HStack{
                            Text("Password")
                            if showPassword == true{
                                TextField("Password", text: $Password)
                            }else{
                                SecureField("Password", text: $Password)
                            }
                            Button {
                                showPassword.toggle()
                            } label: {
                                Image(systemName: showPassword ? "eye.slash" : "eye")
                            }
                        }
                    }
                }
                Text("Click the button below to check the connectivity.")
                Button {
                    CheckConnectivity()
                } label: {
                    Text("Check Connectivity")
                        .frame(width: 200, height: 55)
                        .background(Color.black.opacity(0.05))
                        .padding()
                }
                Label(connectionAvailability ? "Connected" : "Not Connected", systemImage: connectionAvailability ? "checkmark.circle" : "xmark.circle")
                    .foregroundStyle(connectionAvailability ? Color.green : Color.red)
                    .padding()
                if connectionAvailability == true{
                    Button {
                        AuthManager.saveCredentials(username: UserName, password: Password)
                        navigation = true
                    } label: {
                        Text("Save")
                            .frame(width: 200, height: 55)
                            .background(Color.accent)
                            .foregroundStyle(Color.white)
                            .padding()
                    }
                }else{
                    Button {
                        showAlert()
                    } label: {
                        Text("Save")
                            .frame(width: 200, height: 55)
                            .background(Color.gray)
                            .foregroundStyle(Color.white)
                            .padding()
                    }
                }
            }
            .navigationTitle("Network Setup")
            .navigationDestination(isPresented: $navigation) {
                ContentView()
            }
        }
    }
    func CheckConnectivity(){
        
    }
    func showAlert(){
        
    }
}

#Preview {
    NavigationStack{
        Network_Setup_View()
    }
}
