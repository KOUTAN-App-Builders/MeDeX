//
//  Welcome View.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/23.
//

import SwiftUI

struct Welcome_View: View {
    var body: some View {
        VStack{
            HStack{
                Text("Welcome to MeDeX")
                    .font(.title)
                    .bold()
                Spacer()
            }
            Text("Please click on the button below to start the setup process.")
                .font(.title3)
            NavigationLink {
                Administrator_Setup_View()
            } label: {
                Text("Click to Start Setup")
                    .frame(width: 200, height: 100)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
        }
        .navigationTitle("Welcome to MeDeX")
    }
}

#Preview {
    Welcome_View()
}
