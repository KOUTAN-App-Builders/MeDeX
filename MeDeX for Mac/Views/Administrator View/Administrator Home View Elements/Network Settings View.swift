//
//  Network Settings View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI

struct Network_Settings_View: View {
    
    @State private var IPAddress: String = ""
    @State private var PortNo: String = ""
    
    var body: some View {
        VStack{
            Text("Server Info")
                .font(.title)
                .bold()
                .padding(.trailing, 150)
            HStack{
                TextField("IP Address", text: $IPAddress)
                    .frame(width:200, height: 20)
                TextField("Port", text: $PortNo)
                    .frame(width: 50, height: 20)
            }
        }
    }
}

#Preview {
    Network_Settings_View()
}
