import Cocoa

class Jukebox {
    var song: String
    
    init(song: String) {
        self.song = song
    }
}

let jukebox = Jukebox(song: "Hello Monday")

let song = \Jukebox.song
jukebox[keyPath: song] = "Goodbye My Love"

jukebox.song
