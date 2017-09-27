import Foundation

// Calculate the distance with Pythagorean Theorem

func distance(from source: (x: Int, y: Int), to target: (x: Int, y: Int)) -> Double {
	let distanceX = Double(source.x - target.x)
	let distanceY = Double(source.y - target.y)
	
	return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

let source = (0, 0)
let target = (3, 4)

print(distance(from: source, to: target))