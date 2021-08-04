//: [Previous](@previous)

import Foundation

func solution(_ A: [Int]) -> Int {
	var currentMax = A[0], maxSum = A[0]
	var nextSum = 0
	for i in 1..<A.count {
		let value = A[i]
		currentMax = max(A[i], currentMax + value)
		maxSum = max(currentMax, maxSum)
	}
	return maxSum
}

////[5, -7, 3, 5, -2, 4, -1]  -> 10
//solution([3, 2, 6, -1, 4, 5, -1, 2])
////: [Next](@next)


