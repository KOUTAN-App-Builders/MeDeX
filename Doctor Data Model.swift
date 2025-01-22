//
//  File.swift
//  Data Manager for MeDeX
//
//  Created by 加納塙大 Editor on 2025/01/22.
//

import Foundation
import SwiftData

@Model
class Doctor_Data{
    var id: String
    var UserName: String
    var Password: String
    
    init(id: String, UserName: String, Password: String) {
        self.id = UUID().uuidString
        self.UserName = UserName
        self.Password = Password
    }
}
