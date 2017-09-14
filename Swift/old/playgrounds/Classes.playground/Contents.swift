//: Playground - noun: a place where people can play

import UIKit
import AVFoundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

class IOSDevice {
    var name: String
    var screenHeight: Double
    var screenWidth: Double
    private var audioPlayer: AVPlayer?
    
    var screenArea: Double {
        get {
            return self.screenWidth * self.screenHeight
        }
    }
    
    var screenHeightAndWidth: (height: Double, width: Double) {
        get {
            return (self.screenHeight, self.screenWidth)
        }
    }
    
    init(name: String, screenHeight: Double, screenWidth: Double) {
        self.name = name
        self.screenHeight = screenHeight
        self.screenWidth = screenWidth
    }
    
    func playAudio(fromURL url: URL) -> Void {
        audioPlayer = AVPlayer(url: url)
        audioPlayer!.play()
    }
    
    func stopAudio() -> Void {
        if let audioPlayer = self.audioPlayer {
            audioPlayer.pause()
        }
        
        self.audioPlayer = nil
    }
}

let iPhone7 = IOSDevice(name: "iPhone 7", screenHeight: 138.1, screenWidth: 67.0)

print(iPhone7)
print(iPhone7.screenArea)

let japanPop = "http://216.126.195.37:8078/"
let koreanPop = "http://smoke.wavestreamer.com:2684/listen.pls?sid=1"

if let url = URL(string: koreanPop) {
    print("Playing song...")
    iPhone7.playAudio(fromURL: url)
    print("Play complete...")
    iPhone7.stopAudio()
}

extension IOSDevice: CustomStringConvertible {
    var description: String {
        return "\(self.name), \(self.screenHeight) x \(self.screenWidth)"
    }
}

print(iPhone7)
print(iPhone7.screenHeightAndWidth)
print(iPhone7.screenHeightAndWidth.height)
print(iPhone7.screenHeightAndWidth.0)

let iPhone7Plus = IOSDevice(name: "iPhone 7 Plus", screenHeight: 158.1, screenWidth: 77.8)
let iPhoneSE = IOSDevice(name: "iPhone SE", screenHeight: 123.8, screenWidth: 58.6)

let iphones = [iPhone7, iPhoneSE, iPhone7Plus]

for (index, iphone) in iphones.enumerated() {
    print("\(index): \(iphone)")
}

class Person {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let john = Person(name: "John")

let group1: [Person] = [
    Person(name: "Sierra"),
    Person(name: "Maty")
]

let group2: [Person] = [
    Person(name: "Foo"), john
]

func memberOf(person: Person, group: [Person]) -> Bool {
    return group.contains {
        $0 === person
    }
}

memberOf(person: john, group: group1)
memberOf(person: john, group: group2)