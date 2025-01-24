//
//  MeDex_for_MacApp.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/20.
//

import SwiftUI

@main
struct MeDex_for_MacApp: App {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                if isFirstLaunch{
                    Welcome_View()
                }else{
                    ContentView()
                }
            }
        }
    }
}
