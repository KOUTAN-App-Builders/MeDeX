//
//  Prescription Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import Foundation
import SwiftData

@Model
public final class Prescription_Data_Model {
    public var id: UUID
    public var Patient: Patient_Data
    public var Doctor: Doctor_Data
    public var PrescribedDate: Date
    public var Medicine: [Medication_Detail_Data_Model]
    
    public init(id: UUID, Patient: Patient_Data, Doctor: Doctor_Data, PrescribedDate: Date, Medicine: [Medication_Detail_Data_Model]) {
        self.id = id
        self.Patient = Patient
        self.Doctor = Doctor
        self.PrescribedDate = PrescribedDate
        self.Medicine = Medicine
    }
}
