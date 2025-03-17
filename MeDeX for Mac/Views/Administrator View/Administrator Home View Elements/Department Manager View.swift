//
//  Department Manager View.swift
//  MeDeX for Mac
//
//  Created by 加納塙大 Editor on 2025/03/09.
//

import SwiftUI
import SwiftData

struct Department_Manager_View: View {
    
    @Query private var Departments: [Clinical_Department_Data_Model]
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                NavigationLink {
                    Add_Department_View()
                } label: {
                    Image(systemName: "plus")
                }
            }
            ZStack{
                List(Departments){ Department in
                    Text("Departments aren't created yet.")
                        .font(.title)
                    NavigationLink {
                        Edit_Department_View(Department: Department)
                    } label: {
                        Text(Department.DepartmentName)
                            .font(.headline)
                    }
                }
                if Departments.isEmpty{
                    Text("Departments aren't created yet.")
                        .font(.title)
                        .bold()
                }
            }
        }
    }
}

struct Add_Department_View: View {
    
    @Environment(\.modelContext) var Context
    @Environment(\.dismiss) var Dismiss
    @State private var NewDepartmentName: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack{
            HStack{
                Text("Add New Department")
                    .font(.largeTitle)
                    .bold()
                Spacer()
            }
            Spacer()
            TextField("Department Name", text: $NewDepartmentName)
                .frame(width: 300)
                .background(Color.black.opacity(0.05))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            if NewDepartmentName != ""{
                Button {
                    addNewDepartment()
                    Dismiss()
                } label: {
                    Text("Save")
                        .frame(width: 150, height: 30)
                        .background(Color.accent)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
            }else{
                Button {
                    showAlert = true
                } label: {
                    Text("Save")
                        .frame(width: 150, height: 30)
                        .background(Color.gray)
                        .foregroundStyle(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .padding()
                }
                .alert(isPresented: $showAlert){
                    Alert(
                        title: Text("Add a Department name before saving!"),
                        message: Text("Make sure that the department name is not empty."),
                        dismissButton: .default(Text("OK")))
                }
            }
            Spacer()
        }
        .padding()
    }
    func addNewDepartment(){
        let newDepartment = Clinical_Department_Data_Model(id: UUID(), DepartmentName: NewDepartmentName)
        Context.insert(newDepartment)
    }
}

struct Edit_Department_View: View {
    
    @Environment(\.modelContext) var Context
    @Bindable var Department: Clinical_Department_Data_Model
    
    var body: some View {
        VStack{
            HStack{
                Text("Change or Delete Department")
                    .font(.title)
                Spacer()
            }
            Spacer()
            TextField("New Department Name", text: $Department.DepartmentName)
                .frame(width: 300)
                .background(Color.black.opacity(0.05))
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding()
            Button {
                saveDepartmentData()
            } label: {
                Text("Update")
                    .frame(width: 150,height: 30)
                    .background(Color.accentColor)
                    .foregroundStyle(Color.white)
                    .padding()
            }
            Button {
                deleteDepartmentData(Department)
            } label: {
                Label("Delete", systemImage: "trash")
                    .frame(width: 150,height: 30)
                    .background(Color.gray)
                    .foregroundStyle(Color.red)
                    .padding()
            }
            Spacer()
        }
    }
    func saveDepartmentData(){
        try? Context.save()
    }
    func deleteDepartmentData(_ department: Clinical_Department_Data_Model){
        Context.delete(department)
    }
}

#Preview(traits: .sampleData) {
    NavigationStack{
        Department_Manager_View()
    }
}
