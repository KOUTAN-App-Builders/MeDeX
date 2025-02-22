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
    var id: String
    var Date: Date
    var Doctor: String
    var Diagnosis: String
    var Symptoms: String
    var ExaminationData: String?
    var Medication: String
    
    init(id: String, Date: Date, Doctor: String, Diagnosis: String, Symptoms: String, ExaminationData: String? = nil, Medication: String) {
        self.id = UUID().uuidString
        self.Date = Date
        self.Doctor = Doctor
        self.Diagnosis = Diagnosis
        self.Symptoms = Symptoms
        self.ExaminationData = ExaminationData
        self.Medication = Medication
    }
}
