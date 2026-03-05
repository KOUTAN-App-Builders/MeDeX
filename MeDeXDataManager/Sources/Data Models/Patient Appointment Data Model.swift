//
//  Patient Appointment Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/04.
//

import Foundation
import SwiftData

@Model
public final class Patient_Appointment_Data_Model{
    public var appointmentId: UUID
    public var patient: Patient_Data
    public var appointmentDate: Date
    public var appointmentReason: String
    public var appointmentDoctor: Doctor_Data
    public var appointmentClinicalDepartment: Clinical_Department_Data_Model
    public var appointmentNote: String
    public var isAnEmergency: Bool
    
    public init(appointmentId: UUID, patient: Patient_Data, appointmentDate: Date, appointmentReason: String, appointmentDoctor: Doctor_Data, appointmentClinicalDepartment: Clinical_Department_Data_Model,appointmentNote: String, isAnEmergency: Bool) {
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
