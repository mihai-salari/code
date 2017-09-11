import Foundation

let user: String? = "foo"

// Just to make sure user has a value, we don't care what the value it
// contains...
guard let _ = user else {
    print("There is no user.")
    fatalError("Error: nil user exception")
}

print("User is '\(user!)'")
