# GEMINI.md - MeDeX Project Context

## Project Overview
**MeDeX** is a multi-platform medical record management system designed for use in healthcare environments. It consists of a macOS application (for administrators and doctors) and an iOS application (for patients and doctors), both sharing a core data management layer.

### Key Technologies
- **Language:** Swift (v6.0+)
- **UI Framework:** SwiftUI
- **Data Persistence:** SwiftData
- **Shared Logic:** Swift Package (`MeDeXDataManager`)
- **Security:** CryptoKit (Symmetric encryption currently implemented)
- **Platforms:** macOS (v14+), iOS (v17+)

## Architecture & Structure
The project is organized into a workspace containing two main app targets and one shared library:

1.  **MeDeXDataManager (Swift Package):**
    - **Models:** Defines `@Model` classes for `Patient_Data`, `Doctor_Data`, `Administrator_Data`, `Clinical_Record`, etc.
    - **Persistence:** Contains `DataManager.swift` and `Persistence.swift` which initialize the shared `ModelContainer`.
2.  **MeDeX for Mac:**
    - Tailored for hospital workstations.
    - Includes complex management views for Administrators and workflow views for Doctors.
    - Features setup flows for network and administrator configuration.
3.  **MeDeX for iOS:**
    - Focused on portability for both patients and staff.
    - Shares the same data models via the package.

## Development Status & Roadmap
- **Current State:** The macOS UI is largely complete. Basic SwiftData persistence is functional. A prototype `EncryptionManager` exists.
- **Immediate Goals:**
    - Implement Data Transfer Objects (DTOs) for JSON serialization.
    - Transition from local-only storage to a LAN-based client-server model.
    - Enhance security using public-key cryptography.
    - Implement concurrency control (locking) for shared JSON datasets.
    - Formalize credential management (IP, Port, User) via Keychain/AppStorage.

## Building and Running
1.  Open `MeDeX.xcworkspace` in Xcode.
2.  **Targets:**
    - `MeDeX for Mac`: Run on macOS.
    - `MeDeX for iOS`: Run on iOS Simulator or Device.
3.  **Tests:** Run tests in `MeDeXDataManager/Tests` to verify data model logic.

## Conventions & Standards
- **Data Models:** SwiftData models are stored in the `MeDeXDataManager` package to ensure consistency across apps.
- **Naming:** Follows a mix of `CamelCase` and `Snake_Case` for models (e.g., `Patient_Data`, `Clinical_Department_Data_Model`). 
- **Initialization:** Both apps use `DataManager()` to provide the `modelContainer` to the root view via `.modelContainer(dataManager.container)`.
- **Onboarding:** Use `@AppStorage("isFirstLaunch")` to toggle between `Welcome_View` and `ContentView`.

## Key Files
- `MeDeXDataManager/Sources/Data Models/`: The source of truth for all data structures.
- `MeDeXDataManager/Sources/Data Manager.swift`: The central controller for SwiftData.
- `MeDeX for Mac/Data Managers/Encryption Manager.swift`: Current encryption logic using `AES.GCM`.
- `MeDeX for Mac/Views/Setup View/Network Setup View.swift`: UI for configuring server connectivity.
