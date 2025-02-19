//
//  Doctor Data List.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/02/19.
//

import SwiftUI
import SwiftData

struct Doctor_Data_List_View: View {
    
    @Query var doctors: [Doctor_Data]
    @Environment(\.modelContext) var Context
    
    var body: some View {
        List(doctors){ Doctor in
            NavigationLink{
                Doctor_Data_Detail_View()
            }label:{
                VStack{
                    Text(Doctor.UserName)
                        .font(.title)
                        .bold()
                    Text(Doctor.RegisteredDate, style: .date)
                        .font(.caption)
                }
                .padding()
            }
            if doctors.isEmpty{
                Text("Doctor Data is not created yet.")
                    .font(.headline)
                    .bold()
                Text("Please click on the button below to create Doctor User Data.")
                    .font(.subheadline)
                NavigationLink{
                    Doctor_Data_Creation_View()
                }label:{
                    Text("Create")
                        .frame(width: 200, height: 100)
                        .background(Color.accentColor)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
            }
        }
    }
}

struct Doctor_Data_Detail_View: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

struct Doctor_Data_Creation_View: View {
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}

#Preview {
    Doctor_Data_List_View()
}
