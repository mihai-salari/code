import Cocoa

// Any can represent an instance of any type at all, including function types
// AnyObject can represent an instance of any class type

var things = [Any]()

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("hello")
things.append((1.0, 2.0))
things.append({ (name: String) -> String in "Hello, \(name)" })
things.append((1.1, 2.2, 3.3, 4.4))

class MediaItem {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))

for thing in things {
    switch thing {
    case 0 as Int:
        print("Zero as an Int")
    case 0 as Double:
        print("Zero as a Double")
    case let someInt as Int:
        print("An Integer value of \(someInt)")
    case let someDouble as Double where someDouble > 0:
        print("A positive Double value of \(someDouble)")
    case is Double:
        print("Some other Double value that I don't want to print")
    case let someString as String:
        print("A String value of \"\(someString)\"")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let movie as Movie:
        print("a movie called \(movie.name), dir. \(movie.director)")
    case let stringConverter as (String) -> String:
        print(stringConverter("Foo Bar"))
    default:
        print("something else")
    }
}

