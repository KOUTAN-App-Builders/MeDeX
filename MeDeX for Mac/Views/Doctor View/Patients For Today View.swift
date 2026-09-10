//
//  Patients For Today View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patients_For_Today_View: View {
    
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    /*@Query private var AppointmentData: [Patient_Appointment_Data_Model]
    init(){
        let startOfDay: Date = Calendar.current.startOfDay(for: .now)
        let endOfDay: Date = Calendar.current.date(byAdding: .day, value: 1, to: startOfDay)!
        
        _AppointmentData = Query(filter: #Predicate<Patient_Appointment_Data_Model>{ appt in
            appt.appointmentDate >= startOfDay &&
            appt.appointmentDate < endOfDay
        })
    }*/
    @Query private var PatientData: [Patient_Data]
    @Query private var consultations: [Consultation_Request_Data]
    
    /*private var PatientsForToday: [Patient_Data] {
        var seen = Set<ObjectIdentifier>()
        var result: [Patient_Data] = []
        for appt in AppointmentData {
            let patient = appt.patient
            let id = ObjectIdentifier(patient)
            if !seen.contains(id) {
                seen.insert(id)
                result.append(patient)
            }
        }
        return result
    }*/
    
    var body: some View {
        VStack{
            if consultations.count == 0 {
                Text("There are no patients for today.")
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }else{
                List(consultations) { req in
                    NavigationLink {
                        Patient_Detail_View(patient: req.patient, doctor: doctor, department: department)
                    } label: {
                        VStack{
                            Text(req.patient.Name)
                                .font(.title)
                            Text(req.symptoms) // summarization with Apple Intelligence planned
                            Text(req.requestDate, format: .dateTime)
                            //Planning to add appointment time and appointment reason. (Possibly a reason summary made with Apple Intelligence models.)
                            Divider()
                        }
                    }
                }
            }
        }
    }
}

/*#Preview(traits: .sampleData) {
    NavigationStack{
        Patients_For_Today_View()
    }
}*/
