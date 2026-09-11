# **MeDeX**

This is the BASE file of "README.md".

Localized versions of the README file can be accessed from the links below.

[日本語](README.JA.md) | [Deutsch](README.DE.md) | [Español](README.ES.md) | [Français](README.FR.md) | [简体中文](README.zh-CN.md)


## **[About This Project]**
- This App is intended to be used in hospitals to manage patient data.
- This Project mainly consist of two Applications.
- The Mac App and the iOS App.
- I hope you find this project useful!


## **[App Functionalities]**
### **(macOS App)**
- The in-hospital server setup view will be implemented in the macOS App.  
- A SEPARATED login view for admins and doctors.
- Admin View
  1. Managing doctor data (adding and editing name, password, department)
  2. Managing patient data (editing name, password)
  3. Managing admin data (adding and editing name, password)
  4. Managing departments (adding, editing, deleting departments)
  5. Network settings (editing server info)
- Doctor View
  1. Patients for today view (view with a list of the patients visiting on the day)
  2. Full patient list view (view with a list of all the patients)
  - Details about patients and there medical records are accessible from both views.
  - Also include a view for medical record entry.


### **(iOS App)**
- A SEPARATED login view for doctors and patients.
- Doctor View
  - Same functionality as the Mac App
- Patient View
  1. Adding and editing name, password, personal data
  2. Making appointments
  3. Answering medical interviews before examination


## **[Issues & What to Expect]**
**This issues and expected functionalities list will be reset after the next release.**
- [x] Completion of the iOS App.
- [ ] Search for doctors & patients from list.
- [ ] Implementation of the setup for a LAN shared data system with a server.
- [ ] Foundation Models Framework implementation for medical record entry support.
- [ ] MedGemma implementation for finding other possibilities when making a diagnosis.
- [ ] Implementing an appointment DatePicker. (available based on the admin's & doctors' configuration and other appointments)
- [ ] Adding a symptom list for the patient consultation request view. (iOS) 
- [ ]


## **[Links to Each App Project Branch]**
**:warning:Important**
**MeDeX is no longer divided in separate branches and is integrated in the `main` branch.**
 
**Branches linked below aren't in use anymore. Preserved as archives.**
- Click [here](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-iOS-App) to access the iOS App project branch.
- Click [here](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-macOS-App) to access the Mac App project branch.
- Click [here](https://github.com/KOUTAN-App-Builders/MeDeX/tree/MeDeX-Data-Manager-(Swift-Package)) to access the Swift Package for managing data across devices.


## **[Links to the README File for each Project: All English]**
- Click [here](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20Mac%20App/README%20for%20Mac%20App.EN.md) to access the README file for the Mac App.
- Click [here](https://github.com/KOUTAN-App-Builders/MeDeX/tree/main/MeDeX%20Documentation/README%20Files%20for%20iOS%20App/README%20for%20iOS%20App.EN.md) to access the README file for the iOS App.
- **Haven't made a README file for the Swift Package Data Manager yet. Will be made if it becomes necessary.**


## **[Big Thanks to:]**
- ChatGPT [link](https://chatgpt.com)


## **[Message from the Developer]**
Thank you for visiting this repository. 
I'm a Japanese student and entered university in spring of 2026.
I'm also trying to learn `Swift` and this is one of my first projects. 
I appreciate it if you wouldn't publish this project as your own or publish it commercially. 
I may publish this app on the App Store in the future.
I've been making this app with the support by ChatGPT and faced some issues along the way but came to the point where the macOS App UI is almost complete. 
If you are a person working in the medical industry and consider using this app, please contact me at gikou21doc@gmail.com . 
Also, I welcome any feature requests or error/bug report from the developer community! 
However, since I'm a beginner, I may not be familiar with the fix. All ideas and suggestions helps me a lot and it would mean a lot to me if you can leave a comment (fix method) on the issues / discussions tab.
I hope you enjoy this app as much as I do and I hope everyone will have a great developer experience!


Thanks, 
KOUTAN-App-Builders
 

    MeDeX  © 2026 by KOUTAN-App-Builders is licensed under CC BY-NC-SA 4.0. To view a copy of this license, visit https://creativecommons.org/licenses/by-nc-sa/4.0/
