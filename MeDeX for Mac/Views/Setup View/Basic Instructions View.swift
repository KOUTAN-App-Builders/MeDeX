//
//  Basic Instructions.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/24.
//

import SwiftUI

struct Basic_Instructions_View: View {
    
    @AppStorage("isFirstLaunch") var isFirstLaunch: Bool = true
    @State private var navigation: Bool = false
    
    var body: some View {
        VStack{
            Text("Setup Complete!")
                .font(.title)
                .bold()
                .padding(.trailing)
            Text("Continue further setup by clicking the button below")
            Text("and logging in from the administrator login page.")
            
            Text("What you can do in the Admin page")
                .font(.headline)
            VStack{
                HStack{
                    Image(systemName: "stethoscope")
                    VStack{
                        Text("Adding Clinical Departments")
                            .font(.subheadline)
                            .padding(.trailing, 45)
                            .bold()
                        Text("You can add clinical departments")
                        Text("tailored to your hospital.")
                            .padding(.trailing, 50)
                    }
                }
                HStack{
                    Image(systemName: "person.badge.plus")
                    VStack{
                        Text("Adding Doctors")
                            .font(.subheadline)
                            .bold()
                            .padding(.trailing, 83)
                        Text("You can add doctors in your")
                        Text("hospital to the system.")
                            .padding(.trailing, 28)
                    }
                }
                HStack{
                    
                }
            }
            .padding(.trailing, 80)
            Button {
                navigation = true
                isFirstLaunch = false
            } label: {
                Text("Click here to start using MeDeX!")
                    .frame(width: 200, height: 50)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
        .navigationDestination(isPresented: $navigation) {
            ContentView()
        }
    }
}

#Preview {
    Basic_Instructions_View()
}
