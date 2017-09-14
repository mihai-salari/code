//
//  ViewController.swift
//  JSON-POST
//
//  Created by Lee Choon Siong on 2017/06/23.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let todosEndpoint: String = "https://jsonplaceholder.typicode.com/todos"
        
        guard let todosURL = URL(string: todosEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        
        var todosUrlRequest = URLRequest(url: todosURL)
        todosUrlRequest.httpMethod = "POST"
        
        let newTodo: [String: Any] = ["title": "My first todo", "completed": false, "userId": 1]
        let jsonTodo: Data
        
        do {
            jsonTodo = try JSONSerialization.data(withJSONObject: newTodo, options: [])
            todosUrlRequest.httpBody = jsonTodo
        } catch {
            print("Error: cannot create JSON from todo")
            return
        }
        
        let postSession = URLSession.shared
        
        let postTask = postSession.dataTask(with: todosUrlRequest, completionHandler: {
            (data, response, error) in
            guard error == nil else {
                print("Error calling POST on /todos")
                print(error)
                return
            }
            
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            
            do {
                guard let receivedTodo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] else {
                    print("Could not get JSON from responseData as dictionary")
                    return
                }
                
                print("The todo is: " + receivedTodo.description)
                
                guard let todoID = receivedTodo["id"] as? Int else {
                    print("Could not get todoID as int from JSON")
                    return
                }
                
                print("The ID is: \(todoID)")
            } catch {
                print("Error parsing response from POST on /todos")
                return
            }
        })
        
        postTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
