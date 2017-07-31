import Foundation

class UnownedHTMLElement {
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        // capture list:
        // capture self as an unowned reference rather than a strong reference
        [unowned self] in
        
        if let text = self.text {
            return "<\(self.name)>\(text)</\(self.name)>"
        } else {
            return "<\(self.name) />"
        }
        
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
        
        print("\(#file): \(name) is being initialized")
    }
    
    deinit {
        print("\(#file): \(name) is being deinitialized")
    }
}
