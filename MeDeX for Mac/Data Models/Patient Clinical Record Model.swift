//
//  Patient Clinical Record Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
class Patient_Clinical_Record{
    var id: UUID
    var Date: Date
    var ClinicalDepartment: Clinical_Department_Data_Model
    var Doctor: Doctor_Data
    var Diagnosis: String
    var Symptoms: String
    var ExaminationData: String?
    var Prescription: String
    
    init(Date: Date,ClinicalDepartment: Clinical_Department_Data_Model, Doctor: Doctor_Data, Diagnosis: String, Symptoms: String, ExaminationData: String? = nil, Prescription: String) {
        self.id = UUID()
        self.Date = Date
        self.ClinicalDepartment = ClinicalDepartment
        self.Doctor = Doctor
        self.Diagnosis = Diagnosis
        self.Symptoms = Symptoms
        self.ExaminationData = ExaminationData
        self.Prescription = Prescription
    }
}
