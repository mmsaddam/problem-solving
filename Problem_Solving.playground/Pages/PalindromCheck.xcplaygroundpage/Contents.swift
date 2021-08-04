//: [Previous](@previous)

import Foundation


class Solution {
	func isPalindrome(_ s: String) -> Bool {
		let pattern = "[^A-Za-z0-9]+"
		let string = s.replacingOccurrences(of: pattern, with: "", options: [.regularExpression])
		return string.lowercased() == String(string.reversed()).lowercased()
	}
}

Solution().isPalindrome("A man, a plan, a canal: Panama")


func isPalindrome(_ string: String) -> Bool {
	var leftPointer = 0
	var rightPointer = string.count - 1
	var leftIndex = string.index(string.startIndex, offsetBy: leftPointer)
	var rightIndex = string.index(string.startIndex, offsetBy: rightPointer)
	
	while leftIndex < rightIndex {
		if string[leftIndex] != string[rightIndex] {
			return false
		}
		leftPointer += 1
		rightPointer -= 1
		leftIndex = string.index(string.startIndex, offsetBy: leftPointer)
		rightIndex = string.index(string.startIndex, offsetBy: rightPointer)
	}
	return true
}

//: [Next](@next)

isPalindrome("abba")
