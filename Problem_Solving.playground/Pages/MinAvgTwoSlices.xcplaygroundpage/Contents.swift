//: [Previous](@previous)

import Foundation

var b: Double
b = (5 + 4) / 2

public func solution(_ A: inout [Int]) -> Int {
	var minAverage: Double = Double((A[0] + A[1]) / 2)
	var currentAverage: Double!
	var minAverageIndex = 0
	for i in 0..<A.count - 2 {
		currentAverage = Double((A[i] + A[i + 1])) / 2
		print(A[i], A[i + 1], Double(A[i] + A[i + 1]) / 2)
		if minAverage > currentAverage {
			minAverage = currentAverage
			minAverageIndex = i
		}
		
		currentAverage = Double((A[i] + A[i + 1] + A[i + 2])) / 3
		
		if minAverage > currentAverage {
			minAverage = currentAverage
			minAverageIndex = i
		}
		
	}
	
	currentAverage = Double((A[A.count - 2] + A[A.count - 1])) / 2
	
	if minAverage > currentAverage {
		minAverage = currentAverage
		minAverageIndex = A[A.count - 2]
	}
	
	return minAverageIndex
}
var passingCars = [4, 2, 2, 5, 1, 5, 8]
solution(&passingCars)


//: [Next](@next)
