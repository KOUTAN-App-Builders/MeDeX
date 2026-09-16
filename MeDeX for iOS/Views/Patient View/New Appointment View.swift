//
//  New Appointment View.swift
//  MeDeX for iOS
//
//  Created by 加納塙大 on 2026/08/06.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct New_Appointment_View: View {
    
    @Bindable var patient: Patient_Data
    @State private var appointmentDate: Date = Date()
    @State private var appointmentReason: String = ""
    @Query private var doctors: [Doctor_Data]
    @State private var doctor: Doctor_Data? = nil
    @Query private var departments: [Clinical_Department_Data_Model]
    @State private var selectedDepartment: Clinical_Department_Data_Model? = nil
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack{
            Text("Fill in the following form in order to make a new appointment.")
            Spacer()
            Form{
                Section(header: Text("Patient Info (review only)")){
                    Text("Name: \(patient.Name)")
                    Text("Birthdate: \(patient.BirthDate, style: .date)")
                    Text("Sex: \(patient.Sex.rawValue)")
                }
                Section(header: Text("Date and Time")) {
                    DatePicker("Select an appointment date.", selection: $appointmentDate)
                        .datePickerStyle(.automatic)
                }
                Section(header: Text("Department and Purpose")) {
                    HStack{
                        Text("Department: ")
                        Picker("", selection: $selectedDepartment) {
                            ForEach(departments, id: \.self) { dep in
                                Text(dep.DepartmentName).tag(Optional(dep))
                            }
                        }
                    }
                    HStack{
                        Text("Doctor: ")
                        Picker("", selection: $doctor) {
                            ForEach(doctors, id: \.self) { doctor in
                                Text("Dr. \(doctor.UserName)").tag(Optional(doctor))
                            }
                        }
                    }
                    HStack{
                        Text("Purpose of appointment:")
                        TextField("examination result review", text: $appointmentReason)
                            .frame(width: 200, height: 55)
                            .backgroundStyle(Color.black.opacity(0.1))
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .padding()
                    }
                }
            }
            Button {
                addNewAppointment()
                dismiss()
            } label: {
                Text("Submit")
                    .bold()
                    .frame(width: 200, height: 55)
                    .background(Color.background)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .disabled(doctor == nil || selectedDepartment == nil)
            Label("Review your appointment before submitting.", systemImage: "exclamationmark.triangle")
                .foregroundStyle(Color.red)
                .bold()
        }
        .navigationTitle("New Appointment")
    }
    func addNewAppointment(){
        let newAppointment = Patient_Appointment_Data_Model(appointmentId: UUID(), patient: patient, appointmentDate: appointmentDate, appointmentReason: appointmentReason, appointmentDoctor: doctor!, appointmentClinicalDepartment: selectedDepartment!, appointmentNote: "", isAnEmergency: false)
        context.insert(newAppointment)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        New_Appointment_View(patient: Patient_Data(Name: "John Doe", Password: "SamplePassword1", BirthDate: Date(), Sex: .male, BloodType: .A, Height: 173.1, Weight: 73.2, PreviousIllnesses: "None", finalUpdatedDate: Date()))
    }
}
