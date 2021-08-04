//: [Previous](@previous)

import Foundation

func solution(_ A: [Int]) -> Int {
	var maxProfit = 0
	var currentMax = A[0]
	for i in 1..<A.count {
		if currentMax > A[i] {
			currentMax = A[i]
			continue
		}
		maxProfit = max(maxProfit, A[i] - currentMax)
	}
	return maxProfit
}
solution([23171, 21011, 21123, 21366, 21013, 21367])
//: [Next](@next)
