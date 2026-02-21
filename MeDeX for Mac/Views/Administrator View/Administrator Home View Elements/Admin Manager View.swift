//
//  Admin Manager View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI
import SwiftData

struct Admin_Manager_View: View {
    
    @Query private var Admin_Data: [Administrator_Data]
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    Admin_Data_Cretation_View()
                } label: {
                    Image(systemName: "plus")
                }
                
            }
            Text("Customize Admin Settings")
                .font(.title)
                .bold()
            Text("Select Administrator: ")
                .padding(.trailing, 100)
                .font(.title2)
                .bold()
            List(Admin_Data){ admin in
                Divider()
                NavigationLink {
                    Admin_Editor_View(admin: admin)
                } label: {
                    Text(admin.UserName)
                        .font(.headline)
                }
                if Admin_Data.count == 1 {
                    Divider()
                }
            }
        }
    }
}

struct Admin_Editor_View: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var Dismiss
    @State private var showPassword: Bool = false
    @Bindable var admin: Administrator_Data
    
    var body: some View {
        VStack{
            Text("Update Admin Info")
                .font(.title)
                .bold()
            HStack{
                Text("Admin Name: ")
                TextField("New Name", text: $admin.UserName)
            }
            HStack{
                Text("Admin Password: ")
                if showPassword == true{
                    TextField("New Password", text: $admin.Password)
                }else{
                    SecureField("New Password", text: $admin.Password)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            Button {
                UpdateAdminData()
                Dismiss()
            } label: {
                Text("Save")
                    .frame(width: 70, height: 10)
                    .background(Color.accent)
                    .foregroundStyle(Color.white)
                    .padding()
            }
        }
    }
    func UpdateAdminData() {
        do {
            try modelContext.save()
        } catch {
            // Handle save error if needed
            print("Failed to save admin updates: \(error)")
        }
    }
}

struct Admin_Data_Cretation_View: View {
    
    @Environment(\.modelContext) var modelContext
    @Environment(\.dismiss) var Dismiss
    @State private var NewAdminName: String = ""
    @State private var NewAdminPassword: String = ""
    @State private var showPassword: Bool = false
    @State private var NewAdminPasswordConfirmation: String = ""
    @State private var showPasswordConfirmation: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Add New Admin")
                    .font(.title)
                    .bold()
                Spacer()
            }
            HStack{
                Text("Admin Name: ")
                TextField("Admin Name", text: $NewAdminName)
                
            }
            HStack{
                Text("Admin Password: ")
                if showPassword == true {
                    TextField("Password", text: $NewAdminPassword)
                }else{
                    SecureField("Password", text: $NewAdminPassword)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            HStack{
                Text("Type your password again: ")
                if showPasswordConfirmation == true {
                    TextField("Password Check", text: $NewAdminPasswordConfirmation)
                }else{
                    SecureField("Password Check", text: $NewAdminPasswordConfirmation)
                }
                Button {
                    showPasswordConfirmation.toggle()
                } label: {
                    Image(systemName: showPasswordConfirmation ? "eye.slash" : "eye")
                }
            }
            Button {
                AddNewAdmin()
                Dismiss()
            } label: {
                Text("Save")
                    .background(Color.accent)
                    .foregroundStyle(Color.white)
                    .padding()
            }
        }
    }
    func AddNewAdmin(){
        let newAdmin = Administrator_Data(UserName: NewAdminName, Password: NewAdminPassword)
        modelContext.insert(newAdmin)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Admin_Manager_View()
    }
}
