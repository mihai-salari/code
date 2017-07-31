// HTTP DELETE Request

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let firstTodoEndpoint = "https://jsonplaceholder.typicode.com/todos/1"
        
        guard let url = URL(string: firstTodoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "DELETE"
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            print("\(#function) - completionHandler called")
            
            guard error == nil else {
                print("Error: failed to DELETE on /todos/1")
                print(error!)
                return
            }
            
            guard let _ = data else {
                print("Error: failed to call DELETE on /todos/1")
                return
            }            
        }
        
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
