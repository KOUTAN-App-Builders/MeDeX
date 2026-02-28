//
//  Patient Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
public final class Patient_Data{
    public var id: UUID
    public var Name: String
    public var Age: Int
    public var Sex: String
    public var BloodType: String
    public var Height: Double
    public var Weight: Double
    public var PreviousIllnesses: String?
    @Relationship(deleteRule: .cascade) public var ClinicalRecord: [Patient_Clinical_Record]?
    public var finalUpdatedDate: Date
    
    public init(Name: String, Age: Int, Sex: String, BloodType: String, Height: Double, Weight: Double,PreviousIllnesses: String, ClinicalRecord: [Patient_Clinical_Record]? = [], finalUpdatedDate: Date) {
        self.id = UUID()
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
