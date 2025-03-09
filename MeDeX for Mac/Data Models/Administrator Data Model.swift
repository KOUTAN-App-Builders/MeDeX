//
//  Administrator Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
class Administrator_Data{
    var id: UUID
    var UserName: String
    var Password: String
    
    init(UserName: String, Password: String) {
        self.id = UUID()
        self.UserName = UserName
        self.Password = Password
    }
}
