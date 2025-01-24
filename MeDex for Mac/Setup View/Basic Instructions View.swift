//
//  Basic Instructions.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/24.
//

import SwiftUI

struct Basic_Instructions_View: View {
    var body: some View {
        VStack{
            Text("Setup Complete!")
                .font(.title)
                .bold()
                .padding(.trailing)
            Text("Administrator set up is complete.")
                .font(.title3)
                .bold()
                .padding(.trailing)
            Text("Continue further setup by clicking the button below and logging in from the administrator login page.")
                
        }
    }
}

#Preview {
    Basic_Instructions_View()
}
