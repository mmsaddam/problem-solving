//: [Previous](@previous)

import Foundation

func solution(_ A : inout [Int]) -> Int {
	var leftSum = A[0]
	var rightSum = A[1...].reduce(0, +)
	var min = abs(leftSum - rightSum)
	guard A.count > 2  else {
		return min
	}
	for p in 1..<A.count {
		let currentVal = A[p]
		leftSum += currentVal
		rightSum -= currentVal
		let diff = abs(leftSum - rightSum)
		if min > diff {
			min = diff
		}
	}
	return min
}


var array = [-200, 220]
_ = solution(&array)

//: [Next](@next)
