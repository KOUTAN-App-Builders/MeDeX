//
//  MeDex_for_MacApp.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/20.
//

import SwiftUI
import SwiftData

@main
struct MeDeX_for_MacApp: App {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                if isFirstLaunch{
                    ContentView()
                }else{
                    ContentView()
                }
            }
            .modelContainer(for: [Administrator_Data.self, Doctor_Data.self, Patient_Data.self, Patient_Clinical_Record.self,Patient_Appointment_Data_Model.self])
        }
    }
}
