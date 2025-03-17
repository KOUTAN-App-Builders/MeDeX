//
//  Sample Preview Data Models.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/17.
//

import Foundation
import SwiftUI
import SwiftData

struct SampleDataModifier: PreviewModifier {
    static func makeSharedContext() throws -> ModelContainer {
            // Initializing In Memory ModelContainers.
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let previewContainer = try ModelContainer(for:  Administrator_Data.self, Doctor_Data.self, Patient_Data.self, Patient_Clinical_Record.self, Patient_Appointment_Data_Model.self, Clinical_Department_Data_Model.self, Prescription_Data_Model.self, Medication_Detail_Data_Model.self, configurations: configuration)
            let context = previewContainer.mainContext
            
            // Inserting Sample Data
            let admin = Administrator_Data(UserName: "Admin", Password: "SecurePassword123")
            let doctor = Doctor_Data(UserName: "Jason Smith", Password: "ExamplePassword", ClinicalDepartment: [Clinical_Department_Data_Model(id: UUID(), DepartmentName: "Neurology")], RegisteredDate: Date())
            let patient1 = Patient_Data(Name: "John Doe", Age: 45, Sex: "Male", BloodType: "A", Height: 173.1, Weight: 72.3, PreviousIllnesses: "None", finalUpdatedDate: Date())
            let patient2 = Patient_Data(Name: "Jame Smith", Age: 29, Sex: "Female", BloodType: "AB", Height: 156.7, Weight: 56.3, PreviousIllnesses: "Anaphylacxie Shock", finalUpdatedDate: Date())
            context.insert(admin)
            context.insert(doctor)
            context.insert(patient1)
            context.insert(patient2)
            
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
