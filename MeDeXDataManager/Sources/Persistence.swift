//
//  File.swift
//  Data Manager for MeDeX
//
//  Created by 加納塙大 Editor on 2026/02/28.
//

import Foundation
import SwiftData

public enum MeDeXPersistence {
    public static func makeContainer(inMemory: Bool = false) throws -> ModelContainer {
        let schema = Schema([Administrator_Data.self, Doctor_Data.self, Patient_Data.self, Patient_Clinical_Record.self, Patient_Appointment_Data_Model.self, Clinical_Department_Data_Model.self, Prescription_Data_Model.self, Medication_Detail_Data_Model.self])
        
        let configuration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: inMemory)
        
        return try ModelContainer(for: schema, configurations: [configuration])
    }
}
