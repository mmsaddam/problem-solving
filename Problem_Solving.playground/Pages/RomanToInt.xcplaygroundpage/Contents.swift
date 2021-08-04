//: [Previous](@previous)

import Foundation


class Solution {
	func romanToInt(_ s: String) -> Int {
		let indexedArray = Array(s)
		let dic: [Character : Int] = [
			"I" : 1,
			"V" : 5,
			"X" : 10,
			"L" : 50,
			"C" : 100,
			"D" : 500,
			"M" : 1000
		]
		
		var result = 0
		
		for i in 0..<indexedArray.count - 1 {
			let a = dic[indexedArray[i]]!
			let b = dic[indexedArray[i + 1]]!
			if a < b {
				result -= a
			} else {
				result += a
			}
		}
		result += dic[indexedArray[indexedArray.count - 1]]!
		return result
	}
}

Solution().romanToInt("MCMXCIV")




//: [Next](@next)
