//
//  Doctor Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
public final class Doctor_Data{
    public var id: UUID
    public var UserName: String
    public var Password: String
    public var ClinicalDepartment: [Clinical_Department_Data_Model]
    public var RegisteredDate: Date
    
    public init(UserName: String, Password: String, ClinicalDepartment: [Clinical_Department_Data_Model] ,RegisteredDate: Date) {
        self.id = UUID()
        self.UserName = UserName
        self.Password = Password
        self.ClinicalDepartment = ClinicalDepartment
        self.RegisteredDate = RegisteredDate
    }
}
