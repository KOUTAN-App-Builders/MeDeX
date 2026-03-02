//
//  Doctor Data List.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Doctor_Data_List_View: View {
    
    @Query var doctors: [Doctor_Data]
    @Environment(\.modelContext) var Context
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    Doctor_Data_Creation_View()
                } label: {
                    Image(systemName: "plus")
                }
            }
            ZStack{
                List(doctors){ Doctor in
                    NavigationLink{
                        Doctor_Data_Detail_View()
                    }label:{
                        VStack{
                            Text(Doctor.UserName)
                                .font(.title)
                                .bold()
                            Text(Doctor.RegisteredDate, style: .date)
                                .font(.caption)
                        }
                        .padding()
                    }
                }
                if doctors.isEmpty{
                    VStack{
                        Text("Doctor Data is not created yet.")
                            .font(.title)
                            .bold()
                        Text("Please click on the button below to create Doctor User Data.")
                            .font(.headline)
                        NavigationLink{
                            Doctor_Data_Creation_View()
                        }label:{
                            Text("Create")
                                .frame(width: 150, height: 50)
                                .background(Color.accentColor)
                                .foregroundStyle(Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

struct Doctor_Data_Detail_View: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct Doctor_Data_Creation_View: View {
    
    @Query var Doctors: [Doctor_Data]
    @Query var ClinicalDepartments: [Clinical_Department_Data_Model]
    @Environment(\.modelContext) var Context
    @Environment(\.dismiss) var Dismiss
    @State private var NewDoctorName: String = ""
    @State private var NewDoctorPassword: String = ""
    @State private var showPassword: Bool = false
    @State private var NewDoctorPasswordConfirmation: String = ""
    @State private var showPasswordConfirmation: Bool = false
    @State private var isPasswordCorrect: Bool = false
    @State var selectedDepartment: [Clinical_Department_Data_Model] = []
    
    var body: some View {
        VStack{
            HStack{
                Text("Add Doctor")
                    .font(.title)
                    .bold()
                    .padding()
                Spacer()
            }
            TextField("Doctor Name", text: $NewDoctorName)
            HStack{
                if showPassword{
                    TextField("Password", text: $NewDoctorPassword)
                        .textContentType(.password)
                }else{
                    SecureField("Password", text: $NewDoctorPassword)
                        .textContentType(.password)
                }
                Button {
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                }
            }
            HStack{
                if showPasswordConfirmation{
                    TextField("Confirm Password", text: $NewDoctorPasswordConfirmation)
                        .textContentType(.password)
                }else{
                    SecureField("Confirm Password", text: $NewDoctorPasswordConfirmation)
                        .textContentType(.password)
                }
                Button {
                    showPasswordConfirmation.toggle()
                } label: {
                    Image(systemName: showPasswordConfirmation ? "eye.slash" : "eye")
                }
            }
            Picker("Select your department.", selection: $selectedDepartment) {
                ForEach(ClinicalDepartments) { Department in
                        Text(Department.DepartmentName)
                    }
            }
            Button {
                if NewDoctorPassword == NewDoctorPasswordConfirmation{
                    isPasswordCorrect = true
                    addNewDoctor()
                    Dismiss()
                }else{
                 isPasswordCorrect = false
                }
            } label: {
                Text("Save")
                    .background(isPasswordCorrect ? Color.accent : Color.red)
                    .foregroundStyle(Color.white)
            }
        }
        .padding()
        .navigationTitle("Add Doctor")
    }
    func addNewDoctor(){
        let NewDoctor = Doctor_Data(UserName: NewDoctorName, Password: NewDoctorPassword, ClinicalDepartment: selectedDepartment, RegisteredDate: Date())
        Context.insert(NewDoctor)
    }
}

#Preview(traits: .sampleData){
    NavigationStack{
        Doctor_Data_List_View()
    }
}
