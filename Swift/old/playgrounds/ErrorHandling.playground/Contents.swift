//: Playground - noun: a place where people can play

import UIKit

//if let myURL = URL(string: "http://www.choonsiong.com/index.php") {
if let myURL = URL(string: "foo") {
    do {
        let myData = try Data(contentsOf: myURL, options: [])
        let myString = String(data: myData, encoding: .utf8)
        print("Success!")
        print(myString!)
    } catch let nserror as NSError {
        print("============== WARNING ==============")
        print("NSError: \(nserror)")
    } catch {
        print("No idea what happened there: \(error)")
    }
}