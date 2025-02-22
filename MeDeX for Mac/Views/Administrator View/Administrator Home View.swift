//
//  Administrator Home View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/24.
//

import SwiftUI

struct Administrator_Home_View: View {
    
    @State private var AdminName: String = ""
    @State var SelectedUI: UISelector = .DoctorDataList
    
    var body: some View {
        VStack{
            HStack{
                Text("Welcome, \(AdminName)!")
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
                Text("Doctor Data List").tag(UISelector.DoctorDataList)
                Text("Patient Data List").tag(UISelector.PatientDataList)
                Text("Network Settings").tag(UISelector.NetworkSettings)
                Text("Admin Manager").tag(UISelector.AdminManager)
            }
            .pickerStyle(SegmentedPickerStyle())
            Divider()
            switch SelectedUI{
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
}

enum UISelector: Int{
    case DoctorDataList = 0
    case PatientDataList = 1
    case NetworkSettings = 2
    case AdminManager = 3
}

#Preview {
    Administrator_Home_View()
}
