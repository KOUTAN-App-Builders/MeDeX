//
//  File.swift
//  Data Manager for MeDeX
//
//  Created by 加納塙大 Editor on 2025/01/22.
//

import Foundation
import SwiftData

@Model
class Patient_Data{
    var id: String
    var Name: String
    var Age: Int
    var Sex: String
    var BloodType: String
    var Height: Double
    var Weight: Double
    @Relationship var ClinicalRecord: [Patient_Clinical_Record]?
    
    init(id: String, Name: String, Age: Int, Sex: String, BloodType: String, Height: Double, Weight: Double, ClinicalRecord: [Patient_Clinical_Record]? = []) {
        self.id = UUID().uuidString
        self.Name = Name
        self.Age = Age
        self.Sex = Sex
        self.BloodType = BloodType
        self.Height = Height
        self.Weight = Weight
        self.ClinicalRecord = ClinicalRecord
    }
}
