//
//  Model.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/27/24.
//

import Foundation
//class UserModel: ObservableObject{
    struct Event: Hashable, Codable{
        let name: String
        let deadline: Date
        let priority: Int
        let timeToComplete: String
        var done: Bool
    }
class User: ObservableObject, Codable{
    var username = ""
    var password = ""
    var id = 0
    var events: [Event] = []
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
var thisUser = User()
//    @Published var userLoginInfo = loginInfo(username: "", password: "")
//}
    var dummyData = [Event(name: "do laundry", deadline: Date(), priority: 4, timeToComplete: "5 minutes", done: false),
                     Event(name: "do other stuff", deadline: Date(), priority: 3, timeToComplete:"5 minutes", done: false)]

