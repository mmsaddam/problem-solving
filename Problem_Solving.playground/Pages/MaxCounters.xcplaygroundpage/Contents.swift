//: [Previous](@previous)

import Foundation

func solution(_ A : inout [Int], _ N: Int) -> [Int] {
	var counters = Array(repeating: 0, count: N + 1)
	var maxCounter = 0
	var currentMaxCounter = 0
	
	for element in A {
		if element > N {
			currentMaxCounter = maxCounter
		} else {
			if counters[element] < currentMaxCounter {
				counters[element] = currentMaxCounter + 1
			} else {
				counters[element] += 1
			}
			if maxCounter < counters[element] {
				maxCounter = counters[element]
			}
		}
	}
	for i in 0..<counters.count {
		if counters[i] < currentMaxCounter {
			counters[i] = currentMaxCounter
		}
	}
	return Array(counters[1...])
}

var array = [3, 4, 4, 6, 1, 4, 4]
_ = solution(&array, 5)


//: [Next](@next)
