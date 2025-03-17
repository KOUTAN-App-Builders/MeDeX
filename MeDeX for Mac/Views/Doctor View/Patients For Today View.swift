//
//  Patients For Today View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import SwiftUI
import SwiftData

struct Patients_For_Today_View: View {
    
    @Query private var PatientData: [Patient_Data]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Patients_For_Today_View()
    }
}
