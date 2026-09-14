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
    @State private var bodyTemperature: Double? = nil
    @State private var bloodPressure_High: Int? = nil
    @State private var bloodPressure_Low: Int? = nil
    @State private var heartrate: Int? = nil
    @State private var Symptoms: String = ""
    @State private var isUrgent: Bool = false
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    @State private var numberFormatter: NumberFormatter = {
        var numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter
    }()
    
    var body: some View {
        VStack{
            Text("Fill in the following form to let us know about your condition.")
            Spacer()
            Form{
                Section(header: Text("About you (make sure this is your information)")){
                    Text("Name: \(patient.Name)")
                    Text("Birthdate: \(patient.BirthDate, style: .date)")
                    Text("Height: \(patient.Height)cm")
                    Text("Weight: \(patient.Weight)kg")
                }
                Section(header: Text("Detailed Condition")){
                    HStack{
                        Text("Blood Pressure (high): ")
                        TextField(125.description, value: $bloodPressure_High, formatter: numberFormatter)
                            .keyboardType(.numberPad)
                    }
                    HStack{
                        Text("Blood Pressure (low): ")
                        TextField(85.description, value: $bloodPressure_Low, formatter: numberFormatter)
                            .keyboardType(.numberPad)
                    }
                    HStack{
                        Text("Heartrate: ")
                        TextField(90.description, value: $heartrate, formatter: numberFormatter)
                            .keyboardType(.numberPad)
                    }
                    HStack{
                        Text("Body Temperature: ")
                        TextField(36.5.description, value: $bodyTemperature, formatter: numberFormatter)
                            .keyboardType(.decimalPad)
                    }
                }
                Section(header: Text("Your Current Situation")){
                    HStack{
                        Text("Symptoms: ")
                        TextEditor(text: $Symptoms)
                    }
                    HStack{
                        Button {
                            isUrgent.toggle()
                        } label: {
                            Image(systemName: isUrgent ? "checkmark.square.fill" : "checkmark.square")
                                //.symbolEffect(.drawOn) <- Will be fixed in future version.
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
            .disabled(selectedDoctor == nil || selectedDepartment == nil)
        }
        .navigationTitle("New Consultation")
    }
    func saveConsulationRequest(){
        let newRequest = Consultation_Request_Data(requestDate: Date(), patient: patient, department: selectedDepartment!, doctor: selectedDoctor!, bloodPressure_High: bloodPressure_High!, bloodPressure_Low: bloodPressure_Low!, heartrate: heartrate!, bodyTemperature: bodyTemperature!, symptoms: Symptoms, isUrgent: isUrgent)
        context.insert(newRequest)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        New_Consultation_Req_View(patient: Patient_Data(Name: "John Doe", Password: "SamplePassword1", BirthDate: Date(), Sex: .male, BloodType: .A, Height: 173.1, Weight: 72.3, PreviousIllnesses: "None", finalUpdatedDate: Date()))
    }
}
