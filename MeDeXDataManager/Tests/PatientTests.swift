//
//  File.swift
//  MeDeXDataManager
//
//  Created by 加納塙大 Editor on 2026/03/02.
//

import Foundation
import XCTest
@testable import MeDeXDataManager
import SwiftData


final class PatientTests: XCTestCase {
    @MainActor func testPatientSaveAndFetch() throws {
        
        let container = try ModelContainer(for: Patient_Data.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        let context = container.mainContext
        
        let patient = Patient_Data(Name: "Test Patient", Password: "Password", BirthDate: Date(), Sex: .male, BloodType: .A, Height: 175.0, Weight: 65.0, PreviousIllnesses: "N/A", finalUpdatedDate: Date())
        
        context.insert(patient)
        try context.save()
        
        let fetch = FetchDescriptor<Patient_Data>()
        let result = try context.fetch(fetch)
        
        XCTAssertEqual(result.count, 1)
        XCTAssertEqual(result.first?.Name, "Test Patient")
    }
}
