//
//  MeDeX_for_iOSApp.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

@main
struct MeDeX_for_iOSApp: App {
    
    private let dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()
            }
            .modelContainer(dataManager.container)
        }
    }
}
