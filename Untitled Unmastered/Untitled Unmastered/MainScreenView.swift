//
//  MainScreenViewController.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/25/24.
//
import SwiftUI
let priorities = ["Very High", "High","Medium","Low","Very Low"]


struct MainScreenView: View {
    @Environment(\.User) var user
    var body: some View {
        NavigationView { // <1>
            List(testUser.events, id: \.self) { event in
                eventList(event: event)
            }                .navigationBarTitleDisplayMode(.inline)
                .toolbar { // <2>
                    ToolbarItem(placement: .principal) { // <3>
                        VStack {
                            Text("Events").font(.headline)
                        }
                    }
                }
        }
    }
}
private func eventList(event:Event) -> some View{
    VStack(alignment:.leading){
        Text(event.name)
            .font(.largeTitle)
        HStack{
        Text("Priority:")
            Text(priorities[event.priority - 1])
        }
        HStack{
        Text("Estimated time of completion:")
            Text(event.timeToComplete)
        }
        if event.done{
            Text("Completed")
        }else{
            completionButton(event:event)
        }
    }

}
private func completionButton(event:Event)-> some View{
    Button{
//        event.isCompleted = true
    }label: {
        Text("Mark as completed")
            .font(.body)
            .foregroundColor(.white)
            .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10))
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }}

#Preview {
    MainScreenView()
}
