# AGENTS.md - Project Progress & AI Collaboration Guide

## Project Overview
**MeDeX** is a multi-platform medical record management system designed for healthcare environments.
- **`MeDeXDataManager` (Swift Package):** Shared SwiftData models (`Patient_Data`, `Doctor_Data`, `Administrator_Data`, `Patient_Clinical_Record`, `Patient_Appointment_Data_Model`), Keychain security, and draft data models.
- **`MeDeX for Mac`:** Workstation application for administrators and doctors.
- **`MeDeX for iOS`:** Portable application for doctors and patients.

---

## Instructions for AI Assistant (Collaboration Rules)

### Developer Background
The developer is a university student learning Swift and SwiftUI. 

### Core Collaboration Rules
1. **No Massive Code Sweeps / Destructive Rewriting:**
   - Do NOT make massive or sweeping changes to existing code structure without explicit user agreement.
   - Prefer small, incremental, and concise code changes (keep line counts as minimal and simple as possible).
   - Explain how newly introduced SwiftUI components work (e.g., `DatePicker`, `Picker`, `@Bindable`, `@State`, `@Query`, `Form`).

2. **Staged Focus & Roadmap Priority:**
   - **Phase 1 (Current Focus):** Finish the UI for both iOS and macOS apps.
   - **Phase 2 (Accessibility, UX & macOS Window Management):** Improve UI readability, visual hierarchy, Dynamic Type, VoiceOver accessibility, and learn macOS window management (window sizing, resizability, and new window popups/sheets for record entries).
   - **Phase 3 (Generative AI Integration):** Integrate Foundation Models Framework for medical record drafting and MedGemma for diagnostic assistance.
   - **Phase 4 (Backend & LAN Synchronization):** Build LAN client-server integration with Vapor, network setup UI, and secure DTO data transfer.

---

## UI Completion Roadmap (Specific Tasks Required)

### 📱 `MeDeX for iOS` Tasks
1. **`New_Consultation_Req_View.swift`**
   - **Progress:** Created `Consultation_Request_Data` SwiftData model in package. Bound `patient` info, added vital signs fields (BP high/low, heart rate, temperature), symptoms `TextEditor`, emergency checkbox toggle, and SwiftData insertion + dismiss logic (`saveConsulationRequest()`).
   - **Next:** Add predefined symptom list/tag selection and doctor/department picker selection.

2. **`New_Appointment_View.swift`**
   - **Progress:** Bound dynamic `patient` info, added `DatePicker` for appointment date/time, added department & doctor `Picker`s (`@Query`), added appointment purpose `TextField`, and created `addNewAppointment()` helper.
   - **Next:** Insert `newAppointment` into SwiftData `modelContext`, dismiss view on submit, and handle schedule availability checks.

3. **`Appointment_Detail_View.swift`**
   - **Progress:** Built structured card view with `Form` displaying patient name, department, doctor, scheduled date/time, visit purpose, and emergency status.
   - **Next:** Add cancel and reschedule actions.

4. **`Clinical_Record_Detail_View.swift`**
   - **Progress:** Built structured view with `Form` displaying patient name, department, doctor, examination date, symptoms, diagnosis, and prescriptions.
   - **Next:** Refine layout styling and add medication dosage details.

5. **`New_Patient_Detail_Registration_View.swift` & Patient Account Creation Flow**
   - **Progress:** Implemented full 3-step registration wizard with `ProgressView`:
     - Step 1: Credential registration (`New_Patient_Credential_Registration_View`).
     - Step 2: Personal details with `DatePicker` for birthdate, `Picker`s for sex and blood type, `TextField`s with `NumberFormatter` for height/weight (`New_Patient_Detail_Registration_View`).
     - Step 3: Special notes / previous illnesses (`New_Patient_Record_Registration_View`).
     - Confirmation & Save: Review all entered information, return-and-edit navigation links, terms agreement checkbox, SwiftData `Patient_Data` insertion, and sheet dismissal (`New_Patient_Confirmation_View`).
   - **Next:** Add terms and conditions modal link.

6. **`Doctor_Home_View.swift` (iOS)**
   - Added `TabView` with "Patients Today" and "All Patients" tabs (`Patients_for_Today_View`, `Full_Patient_List_View`).
   - **Next:** Populate lists with `@Query` data, patient quick search, and recent clinical records summary.

---

### 💻 `MeDeX for Mac` Tasks
1. **`New_Record_Entry_View.swift`**
   - Refine form layout and alignment (remove hardcoded negative margins).
   - Add vital signs entry fields (Blood Pressure, Pulse, Temperature) and follow-up recommendation notes.

2. **Search & Filtering (`.searchable`)**
   - Add `.searchable` to `Patient_Data_List_View.swift`, `Doctor_Data_List_View.swift`, and `Full_Patient_List_View.swift` to enable searching by name or ID.

3. **Window Adaptability & Window Management (Phase 2)**
   - Replace static element pixel widths (`.frame(width: 400)`) with flexible container layouts that adjust smoothly to macOS window resizing.
   - Learn and implement macOS window management features: default window sizing (`.defaultSize`), secondary window popups (`openWindow` environment action), and modal sheets for record entry workflows.

---

## Progress Tracking Log

- **2026/08/06:** Cleared compiler errors after data model refactoring. Updated project README files. Created iOS UI shells (`New_Consultation_Req_View`, `New_Appointment_View`, `Appointment_Detail_View`, `Clinical_Record_Detail_View`, `Patient_Home_View`).
- **2026/08/07:** Created `AGENTS.md` and updated `GEMINI.md` with project progress and detailed UI completion requirements.
- **2026/08/27:** Implemented appointment creation form in `New_Appointment_View.swift` (dynamic patient info, DatePicker, doctor/department pickers, reason input). Replaced raw placeholders with `Form` containers in `Appointment_Detail_View` and `Clinical_Record_Detail_View`. Added department state in `New_Consultation_Req_View`.
- **2026/09/06:** Implemented `Consultation_Request_Data` SwiftData model in `MeDeXDataManager`. Built consultation questionnaire form in `New_Consultation_Req_View.swift` (patient info, vital signs inputs, symptoms editor, emergency toggle, SwiftData saving, and view dismissal). Added `TabView` with `Patients_for_Today_View` and `Full_Patient_List_View` to iOS `Doctor_Home_View.swift`.
- **2026/09/07:** Built full multi-step patient registration wizard (Credentials -> Personal Details -> Special Notes -> Confirmation & SwiftData insertion with progress bars and back-navigation). Populated `Appointment_Detail_View` and `Clinical_Record_Detail_View` with structured detail sections. Added number formatters to consultation and registration inputs.
