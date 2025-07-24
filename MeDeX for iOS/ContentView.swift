//
//  ContentView.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            NavigationLink {
                Doctor_Login_View()
            } label: {
                Text("Doctor Login")
                    .frame(width: 300, height: 55)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
            NavigationLink {
                Patient_Login_View()
            } label: {
                Text("Patient Login")
                    .frame(width: 300, height: 55)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
