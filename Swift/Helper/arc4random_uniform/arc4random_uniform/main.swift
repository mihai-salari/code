import Foundation

for _ in 0...20 {
    let random = arc4random_uniform(10) // exclusive upper limit, i.e. 0 - 9 only
    print(random)
}
