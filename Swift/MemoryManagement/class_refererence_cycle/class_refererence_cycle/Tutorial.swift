import Foundation

class Tutorial {
    let title: String
    let category: String
    let date: Date
    var editor: Editor?
    
    init(title: String, category: String, date: Date) {
        self.title = title
        self.category = category
        self.date = date
    }
    
    deinit {
        print("deinitializing \(title)")
    }
}
