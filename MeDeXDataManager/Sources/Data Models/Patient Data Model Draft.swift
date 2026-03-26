//
//  File.swift
//  MeDeXDataManager
//
//  Created by 加納塙大 on 2026/03/26.
//

import Foundation
import SwiftUI

@Observable
public class PatientDraft {
    public var Name: String = ""
    public var Password: String = ""
    //public var PasswordConfirmation: String = ""
    public var BirthDate: Date = Date()
    public var Sex: sex = .male
    public var Bloodtype: bloodType = .A
    public var Height: Double = 0
    public var Weight: Double = 0
    public var PreviousIllnesses: String = ""
    
    public init() {  }
}
