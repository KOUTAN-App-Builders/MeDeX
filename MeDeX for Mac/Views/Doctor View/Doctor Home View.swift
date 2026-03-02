//
//  Doctor Home View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/03.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Doctor_Home_View: View {
    
    @Query private var patients: [Patient_Data]
    @State private var selectedUI: DoctorViewSelector = .Patients_For_Today
    @Bindable var Doctor: Doctor_Data
    
    var body: some View {
        NavigationStack{
            VStack{
                HStack{
                    Text("Welcome, \(Doctor.UserName)!")
                        .font(.title)
                        .bold()
                    Spacer()
                    NavigationLink {
                        Doctor_Login_View()
                            .navigationBarBackButtonHidden()
                    } label: {
                        Text("Logout")
                            .frame(width: 100, height: 30)
                            .background(Color.accentColor)
                            .foregroundStyle(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
                Picker("", selection: $selectedUI) {
                    Text("Patients for Today").tag(DoctorViewSelector.Patients_For_Today)
                    Text("Full Patient List").tag(DoctorViewSelector.Patient_Full_List)
                }
                .pickerStyle(SegmentedPickerStyle())
                Divider()
                switch selectedUI {
                case .Patients_For_Today:
                    Patients_For_Today_View()
                case .Patient_Full_List:
                    Full_Patient_List_View()
                }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

enum DoctorViewSelector: Int{
    case Patients_For_Today = 0
    case Patient_Full_List = 1
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Doctor_Home_View(Doctor: Doctor_Data(UserName: "Jason Smith", Password: "ExamplePassword", ClinicalDepartment: [Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Neurology")], RegisteredDate: Date()))
    }
}
