// HTTP POST Request

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let todosEndpoint = "https://jsonplaceholder.typicode.com/todos"
        
        guard let todosURL = URL(string: todosEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        
        var todosUrlRequest = URLRequest(url: todosURL)
        todosUrlRequest.httpMethod = "POST"
        
        let newTodo: [String: Any] = ["title": "My very first todo", "completed": false, "userId": 1]
        
        let jsonTodo: Data
        
        do {
            jsonTodo = try JSONSerialization.data(withJSONObject: newTodo, options: [])
            todosUrlRequest.httpBody = jsonTodo
        } catch {
            print("Error: cannot create JSON from todo")
            return
        }
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: todosUrlRequest) { (data, response, error) in
            print("\(#function) - completionHandler called")
            
            guard error == nil else {
                print("Error: failed to GET on /todos/1")
                print(error!)
                return
            }
            
            guard let responseData = data else {
                print("Error: failed to receive data")
                return
            }
            
            // parse the result as JSON
            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: Any] else {
                    print("Error: failed to convert data to [String: Any]")
                    return
                }
                
                print("The todo is: " + todo.description)
                
                guard let todoID = todo["id"] as? Int else {
                    print("Error: could not get todoID as Int from JSON")
                    return
                }
                
                print("The todo's id is: " + String(todoID))
            } catch {
                print("Error: failed to parse response from POST on /todos")
                return
            }
            
        }
        
        task.resume()
    }
}
