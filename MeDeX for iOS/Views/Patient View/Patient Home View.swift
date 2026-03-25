//
//  Patient Home View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/03/25.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Home_View: View {
    
    @Bindable var patient: Patient_Data
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Patient_Home_View(patient: Patient_Data(Name: "John Doe", Password: "Password", Age: 45, Sex: "Male", BloodType: "AB", Height: 175.5, Weight: 65.5, PreviousIllnesses: "N/A", finalUpdatedDate: Date()))
}
