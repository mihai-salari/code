import Foundation

public class Stack<T> {
    
    // Outsider cannot 'touch' our stacks list
    private var stacks: [T] = []
    
    public var count: Int {
        return self.stacks.count
    }
    
    public func push(item: T) {
        self.stacks.append(item)
    }
    
    @discardableResult public func pop() -> T? {
        guard !stacks.isEmpty else {
            return nil
        }
        
        return self.stacks.popLast()
    }
    
    public func peep() -> T? {
        guard !stacks.isEmpty else {
            return nil
        }
        
        return self.stacks[count-1]
    }
}
