import Foundation

var count = 0
var closure1 = {
    // capture a reference to the count variable
    print(count)
}

closure1()

count = 1
closure1() // print 1

var closure2 = {
    // copy the value from count to a local constant
    [count] in
    print(count)
}

count = 2
closure2() // print 1
