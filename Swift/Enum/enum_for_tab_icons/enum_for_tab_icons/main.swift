import Foundation

// Using enum for tab button icons

enum Icon: String {
    case music
    case sports
    case weather
    
    var filename: String {
        return "\(self.rawValue).png"
    }
}

let musicIcon = Icon.music
print(musicIcon.filename)
