//
//  File.swift
//  Data Manager for MeDeX
//
//  Created by 加納塙大 Editor on 2025/01/23.
//

import Foundation
import SwiftData

public class DataController{
    public static let shared = DataController()
    public let container: ModelContainer
    
    private init(){
        do{
            container = try ModelContainer(for: [Patient_Data.self, Patient_Clinical_Record.self, Doctor_Data.self, Administrator_Data.self])
        }catch{
            fatalError("Error initializing ModelContainer: \(error)")
        }
}
