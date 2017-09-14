//
//  ViewController.swift
//  JSON-DELETE
//
//  Created by Lee Choon Siong on 2017/06/23.
//  Copyright © 2017 Lee Choon Siong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let firstTodoEndpoint: String = "https://jsonplaceholder.typicode.com/todos/1"
        
        var firstTodoUrlRequest = URLRequest(url: URL(string: firstTodoEndpoint)!)
        firstTodoUrlRequest.httpMethod = "DELETE"
        
        let deleteSession = URLSession.shared
        
        let deleteTask = deleteSession.dataTask(with: firstTodoUrlRequest, completionHandler: {
            (data, response, error) in
            guard let _ = data else {
                print("error calling DELETE on /todos/1")
                return
            }
            
            print("DELETE ok")
        })
        
        deleteTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
