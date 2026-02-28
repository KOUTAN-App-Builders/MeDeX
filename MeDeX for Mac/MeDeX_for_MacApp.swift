//
//  MeDex_for_MacApp.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/20.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

@main
struct MeDeX_for_MacApp: App {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    private let dataManager = DataManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                if isFirstLaunch{
                    Welcome_View()
                }else{
                    ContentView()
                }
            }
            .modelContainer(dataManager.container)
        }
    }
}
