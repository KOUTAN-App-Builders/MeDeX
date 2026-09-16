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
- **Current State:** macOS and iOS UI structures are created. Core SwiftData models, **Secure Credential Storage** (Keychain/AppStorage), and patient registration drafts are in place.
- **Recent Progress (2026/09/16):**
    - Resolved potential runtime crashes: safely unwrapped last visit date on patients with zero records in `Full_Patient_List_View.swift` (iOS & Mac).
    - Added Save button and dismissal to iOS `New_Record_Entry_View.swift`.
    - Integrated Department & Doctor selection pickers in `New_Consultation_Req_View.swift`.
    - Added Logout button to iOS `Patient_Home_View.swift`.
    - Implemented default window dimensions (`.defaultSize`) on macOS in `MeDeX_for_MacApp.swift`.
    - Added Administrator deletion in Mac admin settings and standardized `Picker` tags across forms.
- **Previous Progress (2026/09/10):**
    - Built iOS doctor workflow views (`Doctor_Home_View`, `Patients_for_Today_View`, `Full_Patient_List_View` with search, `Patient_Detail_View`, `New_Record_Entry_View`).
    - Added SwiftData insertion and auto-dismissal to `New_Appointment_View.swift`.
    - Added `Terms_and_Conditions_View.swift` and linked it from patient registration confirmation.
    - Added `Consultation_Request_Data` to `makeContainer` schema in `Persistence.swift`.
    - Updated macOS doctor views to consume incoming consultation requests.
- **Next Steps:**
    - **Step 1 (UI Completion & Accessibility):** Fill in missing form controls (`DatePicker`, `Picker`, form state fields) for consultation requests, appointments, patient registration, and detail views. Ensure accessible, user-friendly layouts across iOS and macOS.
    - **Step 2 (Generative AI Integration):** Implement Foundation Models Framework for medical record entry drafting and MedGemma for diagnostic support.
    - **Step 3 (Client-Server & Vapor Backend):** Establish DTOs/`Codable` structs, build Vapor server for LAN shared persistence, and handle server setup configuration.

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
- `MeDeXDataManager/Sources/Data Models/Patient Data Model Draft.swift`: Temporary data holder for registration.
- `MeDeXDataManager/Sources/Data Manager.swift`: The central controller for SwiftData.
- `MeDeX for iOS/Views/Patient View/Patient Account Creation Views/`: New patient registration flow.
- `MeDeX for iOS/Views/Setup View/Network Setup View.swift`: Standardized server setup UI.
- `MeDeX for Mac/Views/Setup View/Network Setup View.swift`: Standardized server setup UI.
