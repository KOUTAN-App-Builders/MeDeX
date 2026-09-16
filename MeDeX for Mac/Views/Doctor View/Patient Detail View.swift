//
//  Patient Detail View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/12.
//

import SwiftUI
import SwiftData
import MeDeXDataManager

struct Patient_Detail_View: View {
    
    @Bindable var patient: Patient_Data
    @Bindable var doctor: Doctor_Data
    @Bindable var department: Clinical_Department_Data_Model
    
    var body: some View {
        VStack{
            HStack {
                Text("Patient: \(patient.Name)")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            Divider()
            Form{
                Section(header: Text("About Patient:").font(.title2).bold()) {
                    HStack{
                        VStack{
                            Text("Age: \(Calendar.current.dateComponents([.year], from: patient.BirthDate, to: Date()).year ?? 0)")
                            Text("Sex: \(patient.Sex.rawValue)")
                            Text("Bloodtype: \(patient.BloodType.rawValue)")
                        }
                        Divider()
                            .frame(height: 60)
                        VStack{
                            Text("Height: \(patient.Height)cm")
                            Text("Weight: \(patient.Weight)kg")
                            Text("")
                        }
                        Divider()
                            .frame(height: 60)
                        VStack{
                            if patient.PreviousIllnesses != nil{
                                Text("Previous Illnesses: \(patient.PreviousIllnesses!)")
                            }else{
                                Text("Previous Illnesses: None")
                            }
                        }
                    }
                }
                Divider()
                Section(header: Text("Clinical Records:").font(.title2).bold()) {
                    VStack {
                        HStack{
                            Spacer()
                            NavigationLink {
                                New_Record_Entry_View(patient: patient, doctor: doctor, department: department)
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                        List(patient.ClinicalRecord, id: \.id){ record in
                            VStack{
                                Text("Visit Date: \(record.Date, style: .date)")
                                    .font(.caption)
                                Text(record.Diagnosis)
                                    .font(.caption2)
                            }
                        }
                    }
                }
            }
        }
    }
}

/*#Preview {
    Patient_Detail_View(patient: Patient_Data(Name: "George Smith", Password: "Password", BirthDate: Date(), Sex: .male, BloodType: .AB, Height: 170.5, Weight: 65.5, PreviousIllnesses: "", finalUpdatedDate: Date()))
}*/
