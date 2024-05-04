//
//  NetworkManager.swift
//  Untitled Unmastered
//
//  Created by Fiifi Botchway on 4/27/24.
//

import Foundation
import Alamofire
class NetworkManager {

    /// Shared singleton instance
    static let shared = NetworkManager()

    private init() { }

    // MARK: - Requests
    /**
     Fetch user information from the backend
     */
    func fetchAccount(userInfo: loginInfo, completion: @escaping (User) -> Void){
        // Specify the endpoint
        let endpoint = " /users/username/\(userInfo.username)/" //Endpoint

        // Create a decoder
        let decoder = JSONDecoder()

        // Create the request
        AF.request(endpoint, method: .get)
            .validate()
            .responseDecodable(of: User.self, decoder: decoder) { response in
                // Handle the response
                switch response.result {
                case .success(let user):
                    print("Successfully fetched \(user.username) ")
                    completion(user)
                case .failure(let error):
                    print("Error in NetworkManager.fetchAccount: \(error.localizedDescription)")
                }
                
            }
    }

    /**
     Fetch all tasks from the backend
     */
    func fetchTasks(user:User, completion: @escaping ([Event]) -> Void) {
        // Specify the endpoint
        let endpoint = " /users/\(user.id)/" //Endpoint

        // Create a decoder
        let decoder = JSONDecoder()

        // Create the request
        AF.request(endpoint, method: .get)
            .validate()
            .responseDecodable(of: [Event].self, decoder: decoder) { response in
                // Handle the response
                switch response.result {
                case .success(let events):
                    print("Successfully fetched \(events.count) tasks")
                    completion(events)
                case .failure(let error):
                    print("Error in NetworkManager.fetchTasks: \(error.localizedDescription)")
                }
            }
    }

    /**
     Add a new task to list

     - Parameters:
        - task: the Task object to add
     */
    func addToList(user:User, event: Event, completion: @escaping (Event) -> Void) {
        // Specify the endpoint
        let endpoint = "/tasks/users/\(user.id)/" //Endpoint from backend

        // Define the request body
        let parameters: Parameters = [
            "name": event.name,
            "priority": event.priority,
            "deadline": event.deadline,
            "time_to_complete": event.timeToComplete,
            "done": event.done
        ]

        // Create a decoder
        let decoder = JSONDecoder()

        // Create the request
        AF.request(endpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .validate()
            .responseDecodable(of: Event.self, decoder: decoder) { response in
                // Handle the response
                switch response.result {
                case .success(let event):
                    print("Successfully added event \(event.name)")
                    completion(event)
                case .failure(let error):
                    print("Error in NetworkManager.addTask: \(error.localizedDescription)")
                }
            }
    }

    func createNewUser(info:loginInfo, completion: @escaping (loginInfo) -> Void)  {
        let endpoint = "/users/" //Endpoint from backend

        // Define the request body
        let parameters: Parameters = [
            "name": info.username,
            "password": info.password
        ]

        // Create a decoder
        let decoder = JSONDecoder()

        // Create the request
        AF.request(endpoint, method: .post, parameters: parameters, encoding: JSONEncoding.default)
            .validate()
            .responseDecodable(of: loginInfo.self, decoder: decoder) { response in
                // Handle the response
                switch response.result {
                case .success(let newUser):
                    print("Successfully added user \(newUser.username)")
                    completion(newUser)
                case .failure(let error):
                    print("Error in NetworkManager.addTask: \(error.localizedDescription)")
                }
            }
    }
}

