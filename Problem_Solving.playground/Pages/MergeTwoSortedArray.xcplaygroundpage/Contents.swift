//: [Previous](@previous)

import Foundation

func mergeTwoArray(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
	var idx = 0
	var idy = 0
	var k = 0
	var result = [Int]()
	
	while idx < firstArray.count  && idy < secondArray.count {
		if firstArray[idx] < secondArray[idy] {
			result.append(firstArray[idx])
			idx += 1
		} else {
			result.append(secondArray[idy])
			idy += 1
		}
	}
	
	while idx < firstArray.count {
		result.append(firstArray[idx])
		idx += 1
	}
	while idy < secondArray.count {
		result.append(secondArray[idy])
		idy += 1
	}
	
	return result
}


mergeTwoArray([1, 2, 8], [3, 6, 7])
