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
    queue.async {
        let result = backgroundWorkd()
        
        DispatchQueue.main.async {
            mainWork(result)
        }
    }
}

execute(backgroundWorkd: {
    addNumbers(range: 100)
}, mainWork: {
    log(message: "The sum is \($0)")
})
