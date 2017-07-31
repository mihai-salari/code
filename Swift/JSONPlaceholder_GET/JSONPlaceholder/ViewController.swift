// HTTP GET Request

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let todoEndpoint = "https://jsonplaceholder.typicode.com/todos/1"
        
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        
        let urlRequest = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
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
                
                guard let todoTitle = todo["title"] as? String else {
                    print("Error: could not get todo title from JSON")
                    return
                }
                
                print("The todo's title is: " + todoTitle)
            } catch {
                print("Error: failed to convert data to JSON")
                return
            }
            
        }
        
        task.resume()
    }
}
