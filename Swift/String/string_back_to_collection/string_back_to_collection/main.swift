//
// https://github.com/apple/swift/blob/master/docs/StringManifesto.md
// https://github.com/apple/swift-evolution/blob/master/proposals/0163-string-revision-1.md
// https://github.com/apple/swift-evolution/blob/master/proposals/0183-substring-affordances.md
//

import Foundation

let name = "Foo Bar"
print(name.count)
print(name.isEmpty)
print(String(name.reversed()))
print(name)

let faces = "😀😆☺️🙃😘😋🤑"
for face in faces {
    print(face)
}

// String subscripts are not primitive type such as Int
var index = name.index(name.startIndex, offsetBy: 0)
index = name.index(name.startIndex, offsetBy: 1)
index = name.index(name.startIndex, offsetBy: 2)
index = name.index(name.startIndex, offsetBy: 4)

let lastName = name[index...]
print(lastName)
print(type(of: lastName)) // Substring is a new type in Swift 4

let lastNameUppercased = lastName.uppercased()
print(lastNameUppercased)
print(type(of: lastNameUppercased))

index = name.index(name.endIndex, offsetBy: -5) // -1 is 'r'
print(name[...index])

/*
 7
 false
 raB ooF
 Foo Bar
 😀
 😆
 ☺️
 🙃
 😘
 😋
 🤑
 Bar
 Substring
 BAR
 String
 Foo
*/
