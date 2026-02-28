//
//  Administrator Data Model.swift
//  MeDex for Mac
//
//  Created by 加納塙大 Editor on 2025/01/26.
//

import Foundation
import SwiftData

@Model
public final class Administrator_Data{
    public var id: UUID
    public var UserName: String
    public var Password: String
    
    public init(UserName: String, Password: String) {
        self.id = UUID()
        self.UserName = UserName
        self.Password = Password
    }
}
