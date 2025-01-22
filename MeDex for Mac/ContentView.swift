//
//  ContentView.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                NavigationLink {
                    Administrator_Login_View()
                } label: {
                    Text("Administrator Login")
                        .frame(width: 200, height: 100)
                        .background(Color.accentColor)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                NavigationLink {
                    Doctor_Login_View()
                } label: {
                    Text("Doctor Login")
                        .frame(width: 200, height: 100)
                        .background(Color.accentColor)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
            }
        }
        .padding()
        .background(Color.background)
    }
}

#Preview {
    ContentView()
}
