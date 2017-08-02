import Foundation

/*
 A linked list is a basic data structure that provides a way to associate
 related content.
 
 In its basic form, a linked list is comprised of a key and an indicator. The
 key represents the data you would like to store. Typically represented by a
 pointer, the indicator stores the location (also called the address) of where
 the next item can be found. Using this technique, you can chain seemingly
 independent objects together.
 
 Linked lists typically provide O(n) for storage and lookup. Algorithms with
 an efficiency of O(n) are said to run in linear time.
 
 */

public class LinkedList<T: Equatable> {
    // new instance
    private var head = LLNode<T>()
    
    // number of items
    var count: Int {
        if head.key == nil {
            return 0
        } else {
            var current: LLNode = head
            var x: Int = 1
            
            // cycle through items
            while current.next != nil {
                current = current.next!
                x += 1
            }
            
            return x
        }
    }
    
    // print keys for the class
    func printAllKeys() {
        var current: LLNode<T>! = head
        
        // assign next instance
        while current != nil {
            print("link item is: \(current.key)")
            current = current.next
        }
    }
    
    // add item
    func append(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        
        var current: LLNode? = head
        
        // position node
        while current != nil {
            if current?.next == nil {
                let childToUse = LLNode<T>()
                
                childToUse.key = key
                childToUse.previous = current
                current!.next = childToUse
                break
            } else {
                current = current?.next
            }
        }
    }
    
    // remove at specific index
    func remove(at index: Int) {
        // check empty conditions
        if ((index < 0) || (index > (self.count - 1)) || (head.key == nil)) {
            print("link index does not exist")
            return
        }
        
        var current: LLNode<T>? = head
        var trailer: LLNode<T>?
        var listIndex: Int = 0
        
        // determine if the removal is at the head
        if index == 0 {
            current = current?.next
            head = current!
            return
        }
        
        // iterate through remaining items
        while current != nil {
            if listIndex == index {
                // redirect the trailer and next pointers
                trailer!.next = current?.next
                current = nil
                break
            }
            
            // update assignments
            trailer = current
            current = current?.next
            listIndex += 1
        }
    }
}
