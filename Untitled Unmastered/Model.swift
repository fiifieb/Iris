//
//  Model.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/27/24.
//

import Foundation
struct Event: Hashable, Codable{
    let name: String
    let deadline: Date
    let priority: Int
    let timeToComplete: String
    var done: Bool
}
struct User: Codable, Observable{
    let username: String
    let password: String
    let id: Int
    var events: [Event]
    enum CodingKeys:String, CodingKey {
        case events = "tasks"
        case username = "name"
        case id, password
    }
}
struct loginInfo: Codable{
    let username: String
    let password: String
}

var testUser = User(username:"User1",password:"password",id:6,events:dummyData)
var dummyData = [Event(name: "do laundry", deadline: Date(), priority: 4, timeToComplete: "5 minutes", done: false),
                 Event(name: "do other stuff", deadline: Date(), priority: 3, timeToComplete:"5 minutes", done: false)]

