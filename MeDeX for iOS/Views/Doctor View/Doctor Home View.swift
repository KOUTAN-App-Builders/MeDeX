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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview(traits: .sampleData) {
    Doctor_Home_View(doctor: Doctor_Data(UserName: "Neil Smith", Password: "Password", ClinicalDepartment: [Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Neurology")], RegisteredDate: Date()))
}
