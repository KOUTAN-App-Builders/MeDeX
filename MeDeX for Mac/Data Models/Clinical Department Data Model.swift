//
//  Clinical Department Data Model.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import Foundation
import SwiftData

@Model
class Clinical_Department_Data_Model {
    var id: UUID
    var DepartmentName: String
    
    init(id: UUID, DepartmentName: String) {
        self.id = id
        self.DepartmentName = DepartmentName
    }
}
