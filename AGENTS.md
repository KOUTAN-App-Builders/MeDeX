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
   - **Basic Information Section:** Add chief complaint input (`TextField`), onset date picker (`DatePicker`), and severity/urgency selector (`Picker`).
   - **Detailed Condition Section:** Add symptoms description (`TextEditor`), fever/temperature field, and pain level scale (`Picker`/`Slider`).
   - **Your Current Situation Section:** Add current medications field (`TextEditor`), known allergies field, and recent travel/exposure notes.
   - **Submission Logic:** Create consultation request instance and handle form dismissal.

2. **`New_Appointment_View.swift`**
   - **Patient Info Section:** Bind to active `patient` data dynamically (Name, Birthdate, Sex).
   - **Date and Time Section:** Add `DatePicker` for selecting appointment date & time slot.
   - **Department and Purpose Section:** Add `Picker` populated with departments (`Clinical_Department_Data_Model`) and visit reason input (`TextField`).
   - **Submission Logic:** Insert new `Patient_Appointment_Data_Model` into SwiftData context.

3. **`Appointment_Detail_View.swift`**
   - Replace `Text("Hello, World!")` placeholder.
   - Build a structured card view displaying appointment status, scheduled date/time, department name, assigned doctor, visit reason, and cancel/reschedule actions.

4. **`Clinical_Record_Detail_View.swift`**
   - Replace `Text("Hello, World!")` placeholder.
   - Display full clinical record details: diagnosis, symptoms, prescribed medications/dosage, treating doctor, department, and examination date.

5. **`New_Patient_Detail_Registration_View.swift`**
   - Build form for `patientDraft` containing: BirthDate (`DatePicker`), Sex (`Picker` for `.male`, `.female`, `.other`), Blood Type (`Picker`), Height (`TextField`), Weight (`TextField`), and Medical History (`TextEditor`).
   - Add save button to create final `Patient_Data` model and insert into `modelContext`.

6. **`Doctor_Home_View.swift` (iOS)**
   - Populate view with Today's Appointments list (`@Query`), patient quick search, and recent clinical records summary.

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
