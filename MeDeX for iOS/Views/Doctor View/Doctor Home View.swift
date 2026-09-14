//
//  Doctor Home View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/25.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Doctor_Home_View: View {
    
    @Bindable var doctor: Doctor_Data
    @Query private var patients: [Patient_Data]
    @State var selectedDepartment: Clinical_Department_Data_Model? = nil
    
    var body: some View {
        VStack{
            Picker("Select Department: ", selection: $selectedDepartment) {
                List(doctor.ClinicalDepartment){ dep in
                    Text(dep.DepartmentName)
                }
            }
            TabView{
                Tab("Patients Today", systemImage: "calendar.today") {
                    if selectedDepartment == nil {
                        Text("Please select your department.")
                    }else{
                        Patients_for_Today_View(doctor: doctor, department: selectedDepartment!)
                    }
                }
                Tab("All Patients", systemImage: "folder.badge.person.crop") {
                    if selectedDepartment == nil{
                        Text("Please select your department.")
                    }else{
                        Full_Patient_List_View(doctor: doctor, department: selectedDepartment!)
                    }
                }
            }
        }
        .navigationTitle("Welcome, \(doctor.UserName)")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                HStack{
                    NavigationLink {
                        Network_Setup_View()
                    } label: {
                        Image(systemName: "gear")
                    }
                    NavigationLink {
                        Doctor_Login_View()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Image(systemName: "rectangle.portrait.and.arrow.right")
                    }

                }
            }
        }
    }
}

/*#Preview(traits: .sampleData) {
    NavigationStack{
        Doctor_Home_View(doctor: Doctor_Data(UserName: "Neil Smith", Password: "Password", ClinicalDepartment: [Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Neurology")], RegisteredDate: Date()))
    }
}*/
