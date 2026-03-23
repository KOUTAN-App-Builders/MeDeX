//
//  Welcome View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2026/03/02.
//

import SwiftUI

struct Welcome_View: View {
    var body: some View {
        VStack{
            Text("Start setting up the app from the button below!")
                .font(.title)
            NavigationLink {
                Network_Setup_View()
            } label: {
                Text("Start Setup")
                    .frame(width: 200, height: 55)
                    .background(Color.accent)
                    .foregroundStyle(Color.white)
                    .padding()
            }
        }
        .padding()
        .navigationTitle("Welcome to MeDeX")
    }
}

#Preview {
    NavigationStack{
        Welcome_View()
    }
}
