//
//  ContentView.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 Editor on 2025/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Choose from the login option below.")
                .font(.headline)
            HStack{
                NavigationLink {
                    Doctor_Login_View()
                } label: {
                    Text("Doctor Login")
                }
                NavigationLink {
                    Patient_Login_View()
                } label: {
                    Text("Patient Login")
                }
            }
            Label("Warning!", systemImage: "exclamationmark.triangle")
                .foregroundStyle(Color.red)
                .font(.caption)
            Text("You will not be able to revert back to this page after entering the patient login view unless you relaunch the app.")
                .foregroundStyle(Color.red)
        }
        .padding()
        .navigationTitle("Welcome to MeDeX")
    }
}

#Preview {
    NavigationStack{
        ContentView()
    }
}
