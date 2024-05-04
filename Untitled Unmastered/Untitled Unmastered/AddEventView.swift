//
//  AddEventViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//

import SwiftUI

struct AddEventView: View {
    @State private var name = ""
    @State private var duration = ""
    let durations = ["15 minutes","30 minutes","45 minutes","1 hour", "2 hours", "3 hours"]
    @State private var priority = ""
    let priorities = ["Very High", "High","Medium","Low","Very Low"]
    @State private var deadline = Date.now
//    @State private var event = false
    var body: some View {
        VStack{
            nameTask
            selectDuration
            selectPriority
            selectDeadline
            addEvent
        }
        .frame(alignment: .leading)
        .padding(20)
        .multilineTextAlignment(.leading)
    }
    private var nameTask: some View{
        HStack{
            Text("Name of task")
            TextField("Task",text: $name)
        }
    }
    private var selectDuration: some View{
        HStack{
            Text("Required time to complete")
            Picker("Deadline",selection: $duration) {
                ForEach(durations, id: \.self) {
                    Text($0)
                }
            }
}

        .pickerStyle(.menu)
        
    }
    private var selectPriority: some View{           HStack{
        Text("Priority")
        Picker("Priority",selection: $priority) {
            ForEach(priorities, id: \.self) {
                Text($0)
            }
        }
        .pickerStyle(.menu)
    }
}
    private var selectDeadline: some View{
        HStack{
            Text("Deadline")
            DatePicker("Deadline", selection: $deadline, in: Date.now...)
                .labelsHidden()
        }
    }

}
    private var addEvent: some View{
        Button("Add Event"){}
            .buttonStyle(.borderedProminent)
            .padding(25)
    }




#Preview {
    AddEventView()
}
