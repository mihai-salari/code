import Foundation

public class Logger {
    static let sharedSingleton = Logger()    
    private let loggerID: String = UUID().uuidString
    
    public func log() {
        print("Logger ID is \(self.loggerID)")
    }
}

extension Logger: CustomStringConvertible {
    public var description: String {
        return "Logger #\(loggerID)"
    }
}
