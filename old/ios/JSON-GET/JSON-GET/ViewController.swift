//
//  ViewController.swift
//  JSON-GET
//
//  Created by Lee Choon Siong on 2017/06/23.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let todoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest, completionHandler: {
            (data, response, error) in
            // check for any errors
            guard error == nil else {
                print("Error calling GET on /todos/1")
                print("Error!")
                return
            }
            
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            
            // parse the result as JSON, since that's what the API provides
            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] else {
                    print("Error trying to convert data to JSON")
                    return
                }
                
                // now we have the todo
                // let's just print it to prove we can access it
                print("The todo is: " + todo.description)
                
                // the todo object is a dictionary
                // so we just access the title using the "title" key
                // so check for the title and print it if we have one
                guard let todoTitle = todo["title"] as? String else {
                    print("Could not get todo title from JSON")
                    return
                }
                
                print("The title is: " + todoTitle)
                
            } catch {
                print("Error trying to convert data to JSON")
                return
            }
        })
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
