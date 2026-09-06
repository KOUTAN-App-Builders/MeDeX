//
//  File.swift
//  MeDeXDataManager
//
//  Created by 加納塙大 on 2026/09/06.
//

import Foundation
import SwiftData

@Model
public final class Consultation_Request_Data{
    public var id: UUID
    public var requestDate: Date
    public var patient: Patient_Data
    public var department: Clinical_Department_Data_Model
    public var doctor: Doctor_Data
    public var bloodPressure_High: Int
    public var bloodPressure_Low: Int
    public var heartrate: Int
    public var bodyTemperature: Double
    public var symptoms: String
    public var isUrgent: Bool
    
    public init(requestDate: Date, patient: Patient_Data, department: Clinical_Department_Data_Model, doctor: Doctor_Data, bloodPressure_High: Int, bloodPressure_Low: Int, heartrate: Int, bodyTemperature: Double, symptoms: String, isUrgent: Bool) {
        self.id = UUID()
        self.requestDate = requestDate
        self.patient = patient
        self.department = department
        self.doctor = doctor
        self.bloodPressure_High = bloodPressure_High
        self.bloodPressure_Low = bloodPressure_Low
        self.heartrate = heartrate
        self.bodyTemperature = bodyTemperature
        self.symptoms = symptoms
        self.isUrgent = isUrgent
    }
    
}
