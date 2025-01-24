//
//  Administrator Home View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/24.
//

import SwiftUI

struct Administrator_Home_View: View {
    
    @State private var AdminName: String = ""
    
    var body: some View {
        VStack{
            Text("Welcome, \(AdminName)!")
                .font(.title)
                .bold()
            
        }
    }
}

#Preview {
    Administrator_Home_View()
}
