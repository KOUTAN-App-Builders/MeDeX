//
//  Medication Detail Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import Foundation
import SwiftData

@Model
public final class Medication_Detail_Data_Model {
    public var id: UUID
    public var Name: String
    public var StartDate: Date
    public var Amount: Double
    public var AmountUnit: String
    public var DoseEachAmount: Int
    public var DoseFrequency: Int
    public var DoseTiming: String
    public var DoseDays: Int
    
    public init(id: UUID, Name: String, StartDate: Date, Amount: Double, AmountUnit: String, DoseEachAmount: Int, DoseFrequency: Int, DoseTiming: String, DoseDays: Int) {
        self.id = id
        self.Name = Name
        self.StartDate = StartDate
        self.Amount = Amount
        self.AmountUnit = AmountUnit
        self.DoseEachAmount = DoseEachAmount
        self.DoseFrequency = DoseFrequency
        self.DoseTiming = DoseTiming
        self.DoseDays = DoseDays
    }
}
