import Foundation

let queenAlbums = [
    ("A Night at the Opera", 1974),
    ("Sheer Heart Attack", 1974),
    ("Jazz", 1978),
    ("The Game", 1980)
]

for qa in queenAlbums {
    switch qa {
    case (let name, 1974):
        print("\(name), 1974")
    default:
        break
    }
}
