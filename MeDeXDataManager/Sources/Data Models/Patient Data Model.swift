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
    public var Password: String
    public var BirthDate: Date
    public var Sex: sex
    public var BloodType: bloodType
    public var Height: Double
    public var Weight: Double
    public var PreviousIllnesses: String?
    @Relationship(deleteRule: .cascade) public var ClinicalRecord: [Patient_Clinical_Record] = []
    public var finalUpdatedDate: Date
    
    public init(Name: String, Password: String, BirthDate: Date, Sex: sex, BloodType: bloodType, Height: Double, Weight: Double,PreviousIllnesses: String, ClinicalRecord: [Patient_Clinical_Record] = [], finalUpdatedDate: Date) {
        self.id = UUID()
        self.Name = Name
        self.Password = Password
        self.BirthDate = BirthDate
        self.Sex = Sex
        self.BloodType = BloodType
        self.Height = Height
        self.Weight = Weight
        self.PreviousIllnesses = PreviousIllnesses
        self.ClinicalRecord = ClinicalRecord
        self.finalUpdatedDate = finalUpdatedDate
    }
}


public enum sex: String, Codable, CaseIterable {
    case male = "Male"
    case female = "Female"
}

public enum bloodType: String, Codable, CaseIterable {
    case A = "A"
    case B = "B"
    case AB = "AB"
    case O = "O"
}
