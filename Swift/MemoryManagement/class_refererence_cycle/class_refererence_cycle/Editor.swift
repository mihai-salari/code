import Foundation

class Editor {
    let name: String
    let email: String
    var tutorial: Tutorial?
    
    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
    
    deinit {
        print("deinitializing \(name)")
    }
}
