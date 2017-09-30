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
