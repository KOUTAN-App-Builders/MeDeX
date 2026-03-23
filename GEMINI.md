# GEMINI.md - MeDeX Project Context

## Project Overview
**MeDeX** is a multi-platform medical record management system designed for use in healthcare environments. It consists of a macOS application (for administrators and doctors) and an iOS application (for patients and doctors), both sharing a core data management layer.

### Key Technologies
- **Language:** Swift (v6.0+)
- **UI Framework:** SwiftUI
- **Data Persistence:** SwiftData
- **Shared Logic:** Swift Package (`MeDeXDataManager`)
- **Security:** CryptoKit (Symmetric encryption) & Keychain (Credentials)
- **Platforms:** macOS (v14+), iOS (v17+)

## Architecture & Structure
The project is organized into a workspace containing two main app targets and one shared library:

1.  **MeDeXDataManager (Swift Package):**
    - **Models:** Defines `@Model` classes for `Patient_Data`, `Doctor_Data`, `Administrator_Data`, `Clinical_Record`, etc.
    - **Persistence:** Contains `DataManager.swift` and `Persistence.swift`. -> initializes the shared `ModelContainer`.
    - **Credential Manager:** A new module using `KeychainHelper` and `AuthManager` to securely store/load user credentials.
2.  **MeDeX for Mac:**
    - Tailored for hospital workstations.
    - Includes complex management views for Administrators and workflow views for Doctors.
    - Features setup flows for network and administrator configuration.
    - Standardized `Network_Setup_View` for server configuration.
3.  **MeDeX for iOS:**
    - Focused on portability for both patients and staff.
    - Shares the same data models via the package.
    - Shares identical server setup logic with the Mac app.

## Development Status & Roadmap
- **Current State:** The macOS/iOS UI foundations are complete. SwiftData persistence and **Secure Credential Storage** (AppStorage/Keychain) are implemented.
- **Next Steps (Phase 1):**
    - Implement Data Transfer Objects (DTOs) and `Codable` structs for JSON serialization.
    - Establish the "Contract" between the apps and the future Vapor server.
    - Create a separate Vapor server project.

- **Upcoming Expectations**
    - Transition from local-only storage to a LAN-based client-server model.
    - Enhance security using public-key cryptography.
    - Implement concurrency control (locking) for shared JSON datasets. 

## Building and Running
1.  Open `MeDeX.xcworkspace` in Xcode.
2.  **Targets:**
    - `MeDeX for Mac`: Run on macOS.
    - `MeDeX for iOS`: Run on iOS Simulator or Device.

## Conventions & Standards
- **Data Models:** SwiftData models are stored in the `MeDeXDataManager` package.
- **Credential Management:**
    - **AppStorage:** Used for non-sensitive data like `server_ip` and `server_port`.
    - **Keychain:** Used via `AuthManager` for sensitive data like `username` and `password`.
- **Initialization:** Both apps use `DataManager()` to provide the `modelContainer`.
- **Onboarding:** Standardized across platforms using `@AppStorage("isFirstLaunch")`.

## Key Files
- `MeDeXDataManager/Sources/Credential Manager/`: Secure storage logic (Keychain).
- `MeDeXDataManager/Sources/Data Models/`: The source of truth for all data structures.
- `MeDeXDataManager/Sources/Data Manager.swift`: The central controller for SwiftData.
- `MeDeX for iOS/Views/Setup View/Network Setup View.swift`: Standardized server setup UI.
- `MeDeX for Mac/Views/Setup View/Network Setup View.swift`: Standardized server setup UI.
