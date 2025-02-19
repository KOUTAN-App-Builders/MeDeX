//
//  Doctor Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
class Doctor_Data{
    var id: String
    var UserName: String
    var Password: String
    var RegisteredDate: Date
    
    init(id: String, UserName: String, Password: String, RegisteredDate: Date) {
        self.id = UUID().uuidString
        self.UserName = UserName
        self.Password = Password
        self.RegisteredDate = RegisteredDate
    }
}
