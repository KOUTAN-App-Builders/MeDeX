//
//  Administrator Home View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/24.
//

import SwiftUI
import SwiftData

struct Administrator_Home_View: View {
    
    @Query private var Departments: [Clinical_Department_Data_Model]
    @Environment(\.modelContext) var Context
    @Bindable var Admin: Administrator_Data
    @State var SelectedUI: UISelector = .DoctorDataList
    
    var body: some View {
        VStack{
            HStack{
                Text("Welcome, \(Admin.UserName)!")
                    .font(.title)
                    .bold()
                Spacer()
                NavigationLink {
                    Administrator_Login_View()
                        .navigationBarBackButtonHidden()
                } label: {
                    Text("Logout")
                        .frame(width: 100, height: 30)
                        .background(Color.accentColor)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
            }
            Picker("", selection: $SelectedUI){
                Text("Departments List").tag(UISelector.DepartmentList)
                Text("Doctor Data List").tag(UISelector.DoctorDataList)
                Text("Patient Data List").tag(UISelector.PatientDataList)
                Text("Network Settings").tag(UISelector.NetworkSettings)
                Text("Admin Manager").tag(UISelector.AdminManager)
            }
            .pickerStyle(SegmentedPickerStyle())
            Divider()
            switch SelectedUI{
            case .DepartmentList:
                Department_Manager_View()
                    /*.task {
                        if Departments.isEmpty{
                            await addDefaultDepartments()
                        }
                    }*/
            case .DoctorDataList:
                Doctor_Data_List_View()
            case .PatientDataList:
                Patient_Data_List_View()
                
            case .NetworkSettings:
                Network_Settings_View()
            case .AdminManager:
                Admin_Manager_View()
            }
        }
        .padding()
    }
    /*private func addDefaultDepartments() async{
        let defaultDepartments = [
            Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Internal Medicine"),
            Clinical_Department_Data_Model(id: UUID(), DepartmentName: "General Surgery"),
            Clinical_Department_Data_Model(id: UUID(), DepartmentName: "General Practice"),
            Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Emergency Room"),
            Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Radiology")
        ]
        for department in defaultDepartments {
            Context.insert(department)
        }
        do{
            try Context.save()
        }catch{
            print("failed to save default Departments. Error: \(error)")
        }
    }*/
}

enum UISelector: Int{
    case DepartmentList = 0
    case DoctorDataList = 1
    case PatientDataList = 2
    case NetworkSettings = 3
    case AdminManager = 4
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Administrator_Home_View(Admin: Administrator_Data(UserName: "Admin", Password: "SecurePassword123"))
    }
}
