import Foundation

// utf8 - 8 code units

let c = "\u{00bd}"
print(c)

for i in c.utf8 {
    print("\(i): \(String(i, radix: 2))")
}

for i in 0...15 {
    // 10...15 - A...F in hex
    print("\(i): \(String(i, radix: 2))")
}

let c2 = "+\u{00bd}\u{21e8}\u{1f643}"
print(c2)

for i in c2.utf8 {
    print("\(i): \(String(i, radix: 2))")
}
