import Foundation

let groupSizes = [1, 5, 4, 6, 2, 1, 3]

for case 1 in groupSizes {
    print("Found an individual!")
}

for case 1...3 in groupSizes {
    print("Found a small group!")
}

/*
 
 Found an individual!
 Found an individual!
 Found a small group!
 Found a small group!
 Found a small group!
 Found a small group!
 Program ended with exit code: 0
 
*/
