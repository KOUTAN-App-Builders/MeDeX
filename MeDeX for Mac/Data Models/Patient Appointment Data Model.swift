//
//  Patient Appointment Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import Foundation
import SwiftData

@Model
class Patient_Appointment_Data_Model{
    var appointmentId: UUID
    var patient: Patient_Data
    var appointmentDate: Date
    var appointmentReason: String
    var appointmentDoctor: Doctor_Data
    var appointmentClinicalDepartment: Clinical_Department_Data_Model
    var appointmentNote: String
    var isAnEmergency: Bool
    
    init(appointmentId: UUID, patient: Patient_Data, appointmentDate: Date, appointmentReason: String, appointmentDoctor: Doctor_Data, appointmentClinicalDepartment: Clinical_Department_Data_Model,appointmentNote: String, isAnEmergency: Bool) {
        self.appointmentId = appointmentId
        self.patient = patient
        self.appointmentDate = appointmentDate
        self.appointmentReason = appointmentReason
        self.appointmentDoctor = appointmentDoctor
        self.appointmentClinicalDepartment = appointmentClinicalDepartment
        self.appointmentNote = appointmentNote
        self.isAnEmergency = isAnEmergency
    }
}
