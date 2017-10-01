// Swift 4 update

import Cocoa

// Converting between Range<String.Index> and NSRange

let population = "1️⃣👻3️⃣🤖5️⃣👫7️⃣🐉"
print(population.count)

let populationRange = population.startIndex... // Range<String.Index>
print(populationRange)

var nsRange = NSRange(population.startIndex..., in: population)
print(nsRange)

print(population.utf16.count)

let display = NSMutableAttributedString(string: population, attributes: [.font: NSFont.systemFont(ofSize: 20)])

let oneIndex = population.index(of: "1️⃣")!
let threeIndex = population.index(of: "3️⃣")!
let fiveIndex = population.index(of: "5️⃣")!
let sevenIndex = population.index(of: "7️⃣")!

var range = oneIndex..<threeIndex
nsRange = NSRange(range, in: population)
display.addAttribute(.font, value: NSFont.systemFont(ofSize: 50), range: nsRange)

range = threeIndex..<fiveIndex
nsRange = NSRange(range, in: population)
display.addAttribute(.font, value: NSFont.systemFont(ofSize: 40), range: nsRange)

range = fiveIndex..<sevenIndex
nsRange = NSRange(range, in: population)
display.addAttribute(.font, value: NSFont.systemFont(ofSize: 30), range: nsRange)

let textInput = "You've traveled 483.2 miles."
let pattern = "[0-9]+(\\.([0-9])?)?"
let regex = try! NSRegularExpression(pattern: pattern, options: [])
nsRange = NSRange(textInput.startIndex..., in: textInput)
let mileage = regex.rangeOfFirstMatch(in: textInput, range: nsRange)

// From NSRange to Range<String.Index>
range = Range(mileage, in: textInput)!
print(textInput[range])
