//
//  Prescription Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import Foundation
import SwiftData

@Model
class Prescription_Data_Model {
    var id: UUID
    var Patient: Patient_Data
    var Doctor: Doctor_Data
    var PrescribedDate: Date
    var Medicine: [Medication_Detail_Data_Model]
    
    init(id: UUID, Patient: Patient_Data, Doctor: Doctor_Data, PrescribedDate: Date, Medicine: [Medication_Detail_Data_Model]) {
        self.id = id
        self.Patient = Patient
        self.Doctor = Doctor
        self.PrescribedDate = PrescribedDate
        self.Medicine = Medicine
    }
}
