//: [Previous](@previous)

import Foundation

func solution(_ A: [Int]) -> [Int] {
	var reversedArray = A
	for i in 0...A.count / 2 {
		(reversedArray[i], reversedArray[(A.count - 1) - i]) = (reversedArray[(A.count - 1) - i], reversedArray[i])
	}
	return reversedArray
}
solution([1, 2, 3, 4, 5, 6])
solution([1, 2, 3, 4, 5])
