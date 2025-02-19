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
            HStack{
                Image(systemName: "person.badge.shield.checkmark.fill")
                    .imageScale(.large)
                    .foregroundStyle(.accent)
                Text("Administrator set up is complete.")
                    .font(.title3)
                    .bold()
                    .padding(.trailing)
            }
            Text("Continue further setup by clicking the button below")
            Text("and logging in from the administrator login page.")
            
            NavigationLink {
                ContentView()
            } label: {
                Text("Click here to start using MeDeX!")
                    .frame(width: 200, height: 50)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
    }
}

#Preview {
    Basic_Instructions_View()
}
