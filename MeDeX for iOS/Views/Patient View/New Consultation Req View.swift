//
//  New Consultation Req View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/08/06.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Consultation_Req_View: View {
    
    //@Bindable var patient: Patient_Data
    
    var body: some View {
        VStack{
            Text("Fill in the following form to let us know about your condition.")
            Spacer()
            Form{
                Section(header: Text("Basic Information")){
                    
                }
                Section(header: Text("Detailed Condition")){
                    
                }
                Section(header: Text("Your Current Situation")){
                    
                }
            }
            Button {
                
            } label: {
                Text("Submit")
                    .bold()
                    .frame(width: 200, height: 55)
                    .background(Color.background)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }

        }
        .navigationTitle("New Consultation")
    }
}

#Preview {
    NavigationStack{
        New_Consultation_Req_View()
    }
}
