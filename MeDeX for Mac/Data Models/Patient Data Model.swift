//
//  Patient Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
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
    var PreviousIllnesses: String?
    @Relationship var ClinicalRecord: [Patient_Clinical_Record]?
    var finalUpdatedDate: Date
    
    init(id: String, Name: String, Age: Int, Sex: String, BloodType: String, Height: Double, Weight: Double,PreviousIllnesses: String, ClinicalRecord: [Patient_Clinical_Record]? = [], finalUpdatedDate: Date) {
        self.id = UUID().uuidString
        self.Name = Name
        self.Age = Age
        self.Sex = Sex
        self.BloodType = BloodType
        self.Height = Height
        self.Weight = Weight
        self.PreviousIllnesses = PreviousIllnesses
        self.ClinicalRecord = ClinicalRecord
        self.finalUpdatedDate = finalUpdatedDate
    }
}
