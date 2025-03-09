//
//  Medication Detail Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import Foundation
import SwiftData

@Model
class Medication_Detail_Data_Model {
    var id: UUID
    var Name: String
    var StartDate: Date
    var Amount: Double
    var AmountUnit: String
    var DoseEachAmount: Int
    var DoseFrequency: Int
    var DoseTiming: String
    var DoseDays: Int
    
    init(id: UUID, Name: String, StartDate: Date, Amount: Double, AmountUnit: String, DoseEachAmount: Int, DoseFrequency: Int, DoseTiming: String, DoseDays: Int) {
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
