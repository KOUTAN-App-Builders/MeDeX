//
//  Patient Clinical Record Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
public final class Patient_Clinical_Record{
    public var id: UUID
    public var Date: Date
    public var Patient: Patient_Data
    public var ClinicalDepartment: Clinical_Department_Data_Model
    public var Doctor: Doctor_Data
    public var Diagnosis: String
    public var Symptoms: String
    public var ExaminationData: String?
    public var Prescription: String
    
    public init(Date: Date,Patient: Patient_Data, ClinicalDepartment: Clinical_Department_Data_Model, Doctor: Doctor_Data, Diagnosis: String, Symptoms: String, ExaminationData: String? = nil, Prescription: String) {
        self.id = UUID()
        self.Date = Date
        self.Patient = Patient
        self.ClinicalDepartment = ClinicalDepartment
        self.Doctor = Doctor
        self.Diagnosis = Diagnosis
        self.Symptoms = Symptoms
        self.ExaminationData = ExaminationData
        self.Prescription = Prescription
    }
}
