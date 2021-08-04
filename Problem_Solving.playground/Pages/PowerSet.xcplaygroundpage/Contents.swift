//: [Previous](@previous)

import Foundation


//class Program {
//	// O(2^n * n/2) = O(2^n * n)  time |  O(2^n * n) space
//  func powerset(array: [Int]) -> [[Int]] {
//	var result = [[Int]]()
//		result.append([])
//		for value in array {
//			for subset in result {
//				result.append(subset + [value])
//			}
//		}
//
//	return result
//  }
//}


//class Program {
//	// O(2^n * n/2) = O(2^n * n)  time |  O(2^n * n) space
//	func powerset(array: [Int], index: Int? = nil) -> [[Int]] {
//		var index = index
//
//		if index == nil {
//			index = array.count - 1
//		} else if index! < 0 {
//			return [[]]
//		}
//
//		let element = array[index!]
//
//		var subsets = powerset(array: array, index: index! - 1)
//		let count = subsets.count
//
//
//		for i in 0..<count {
//			let currentSubset = subsets[i]
//			subsets.append(currentSubset + [element])
//		}
//		print(subsets, element)
//		return subsets
//  }
//}
//
//_ = Program().powerset(array: [1, 2, 3, 5, 6])
