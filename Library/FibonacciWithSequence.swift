import Foundation

let fib = sequence(state:(0, 1)) {
	(pair: inout (Int, Int)) -> Int in
	let n = pair.0 + pair.1
	pair = (pair.1, n)
	
	return n
}

for i in fib.prefix(10) {
	print(i)
}