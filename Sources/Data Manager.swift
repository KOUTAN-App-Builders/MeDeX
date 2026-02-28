//
//  File.swift
//  Data Manager for MeDeX
//
//  Created by 加納塙大 Editor on 2026/02/28.
//

import Foundation
import SwiftData

@MainActor
public final class DataManager {
    
    public let container: ModelContainer
    public let context: ModelContext
    
    public init(inMemory: Bool = false) {
        do {
            self.container = try MeDeXPersistence.makeContainer(inMemory: inMemory)
            self.context = container.mainContext
        } catch {
            fatalError("Failed to create container: \(error)")
        }
    }
}
