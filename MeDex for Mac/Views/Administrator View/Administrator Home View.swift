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
            Text("Welcome, \(AdminName)!")
                .font(.title)
                .bold()
            if SelectedUI == .DoctorDataList{
                
            }
        }
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
