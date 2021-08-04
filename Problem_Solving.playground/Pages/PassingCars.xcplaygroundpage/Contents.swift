//: [Previous](@previous)

import Foundation

public func solution(_ A: inout [Int]) -> Int {
	var result = 0
	var count = 0
	var n = A.count - 1
	while n >= 0 {
		if A[n] == 1 {
			count += 1
		} else {
			result += count
		}
		n -= 1
	}
	let maxPassingCars = 1000000000
	return result > maxPassingCars ? -1  : result
}
var passingCars = [0, 1, 0, 1, 1]
solution(&passingCars)

//: [Next](@next)
