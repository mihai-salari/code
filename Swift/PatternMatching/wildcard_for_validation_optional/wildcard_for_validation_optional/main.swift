import Foundation

var user: String? = "foo"

// Just to make sure user variable has a value, we don't care what the value it
// contains at the moment...
guard let _ = user else {
    print("There is no user.")
    fatalError("Error: nil user exception")
}

print("User is '\(user!)'")

user = nil

// The best way to validate an optional where you don't care about the value
// is below... (above is example only)
guard user != nil else {
    print("There is no user.")
    fatalError("Error: nil user exception")
}
