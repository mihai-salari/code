import Foundation

func log(message: String) {
    let thread = Thread.current.isMainThread ? "Main" : "Background"
    
    print("\(thread) thread: \(message)")
}

log(message: "hello")

func addNumbers(range: Int) -> Int {
    log(message: "Adding numbers...")
    
    return (1...range).reduce(0, +)
}

let result = addNumbers(range: 10)
print(result)

let queue = DispatchQueue(label: "queue")

func execute<T>(backgroundWorkd: @escaping () -> T, mainWork: @escaping (T) -> ()) {
    print("executing...")
    queue.async {
        print("in background queue...")
        let result = backgroundWorkd()
        
        DispatchQueue.main.async {
            print("in main queue...")
            mainWork(result)
        }
    }
}

var count = 0

while count <= 1000 {
    execute(backgroundWorkd: {
        addNumbers(range: 100)
    }, mainWork: {
        log(message: "The sum is \($0)")
    })
    
    count += 1
}
