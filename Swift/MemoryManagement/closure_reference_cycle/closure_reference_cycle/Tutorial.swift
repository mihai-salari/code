import Foundation

class Tutorial {
    // each tutorial must has an author during this phase, it can't be nil
    // therefore, we use unowned here instead of weak
    unowned let author: Author
    let title: String
    let category: String
    let date: Date
    var editor: Editor?
    
    // create strong reference cycle due to closure capturing self
    lazy var tutorialDescription: () -> String = {
        return "\(self.title) \(self.category)"
    }
    
    lazy var safeTutorialDescription: () -> String = {
        // with capture list
        [unowned self] in
        return "\(self.title) \(self.category)"
    }
    
    init(author: Author, title: String, category: String, date: Date) {
        self.author = author
        self.title = title
        self.category = category
        self.date = date
    }
    
    deinit {
        print("deinitializing \(title)")
    }
}

extension Tutorial: CustomStringConvertible {
    var description: String {
        return "\(title) \(category) \(date)"
    }
}
