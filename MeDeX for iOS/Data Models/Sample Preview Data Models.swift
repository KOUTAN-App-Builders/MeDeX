//
//  Sample Preview Data Models.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/17.
//

import Foundation
import SwiftUI
import SwiftData
import MeDeXDataManager

struct SampleDataModifier: PreviewModifier {
    static func makeSharedContext() throws -> ModelContainer {
        // Initializing In Memory ModelContainers.
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let previewContainer = try ModelContainer(for:  Administrator_Data.self, Doctor_Data.self, Patient_Data.self, Patient_Clinical_Record.self, Patient_Appointment_Data_Model.self, Clinical_Department_Data_Model.self, Prescription_Data_Model.self, Medication_Detail_Data_Model.self, configurations: configuration)
        let context = previewContainer.mainContext
        
        // Inserting Sample Data
        let admin = Administrator_Data(UserName: "Admin", Password: "SecurePassword123")
        let patient1 = Patient_Data(Name: "John Doe", Password: "SamplePassword1", BirthDate: Date(), Sex: .male, BloodType: .A, Height: 173.1, Weight: 72.3, PreviousIllnesses: "None", finalUpdatedDate: Date())
        let patient2 = Patient_Data(Name: "Jame Smith", Password: "SamplePassword2", BirthDate: Date(), Sex: .female, BloodType: .AB, Height: 156.7, Weight: 56.3, PreviousIllnesses: "Anaphylacxie Shock", finalUpdatedDate: Date())
        let department1 = Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Otolaryngology")
        let department2 = Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Ophthalmology")
        let department3 = Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Dermatology")
        let department4 = Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Surgery")
        let department5 = Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Internal Medicine")
        let doctor = Doctor_Data(UserName: "Jason Smith", Password: "ExamplePassword", ClinicalDepartment: [department1], RegisteredDate: Date())
        context.insert(admin)
        context.insert(doctor)
        context.insert(patient1)
        context.insert(patient2)
        context.insert(department1)
        context.insert(department2)
        context.insert(department3)
        context.insert(department4)
        context.insert(department5)
        
        // Attaching the ModelContainer to the content view.
        return previewContainer
    }
    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
}

extension PreviewTrait where T == Preview.ViewTraits {
    @MainActor static var sampleData: Self {
        .modifier(SampleDataModifier())
    }
}
