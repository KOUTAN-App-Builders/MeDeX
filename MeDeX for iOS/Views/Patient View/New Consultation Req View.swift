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
    @Query private var departments: [Clinical_Department_Data_Model]
    @Bindable var patient: Patient_Data
    @State private var selectedDepartment: Clinical_Department_Data_Model? = nil
    @State private var selectedDoctor: Doctor_Data? = nil
    @State private var bodyTemperature: Double = 0
    @State private var bloodPressure_High: Int = 0
    @State private var bloodPressure_Low: Int = 0
    @State private var heartrate: Int = 0
    @State private var Symptoms: String = ""
    @State private var isUrgent: Bool = false
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack{
            Text("Fill in the following form to let us know about your condition.")
            Spacer()
            Form{
                Section(header: Text("About you (make sure this is your information)")){
                    Text(patient.Name)
                    Text(patient.BirthDate, style: .date)
                    //Text(patient.Height)
                    //Text(patient.Weight)
                }
                Section(header: Text("Detailed Condition")){
                    HStack{
                        Text("Blood Pressure (high): ")
                        TextField("125", text: $bloodPressure_High)
                            .keyboardType(.decimalPad)
                    }
                    HStack{
                        Text("Blood Pressure (low): ")
                        TextField("85", text: $bloodPressure_Low)
                            .keyboardType(.decimalPad)
                    }
                    HStack{
                        Text("Heartrate: ")
                        TextField("90", text: $heartrate)
                            .keyboardType(.decimalPad)
                    }
                    HStack{
                        Text("Body Temperature: ")
                        TextField("36.5", text: $bodyTemperature)
                    }
                }
                Section(header: Text("Your Current Situation")){
                    HStack{
                        Text("Symptoms: ")
                        TextEditor("Please write down your symptoms here.", text: $Symptoms)
                    }
                    HStack{
                        Button {
                            isUrgent.toggle()
                        } label: {
                            Image(systemName: isUrgent ? "checkmark.square.fill" : "checkmark.square")
                                .symbolEffect(.drawOn)
                                .backgroundStyle(Color.blue)
                                .foregroundStyle(Color.white)
                        }
                        Text("Is this an emergency?")
                    }
                }
            }
            Button {
                saveConsulationRequest()
                dismiss()
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
    func saveConsulationRequest(){
        let newRequest = Consultation_Request_Data(requestDate: Date(), patient: patient, department: selectedDepartment!, doctor: selectedDoctor!, bloodPressure_High: bloodPressure_High, bloodPressure_Low: bloodPressure_Low, heartrate: heartrate,bodyTemperature: bodyTemperature, symptoms: Symptoms, isUrgent: isUrgent)
        context.insert(newRequest)
    }
}

#Preview {
    NavigationStack{
        New_Consultation_Req_View()
    }
}
