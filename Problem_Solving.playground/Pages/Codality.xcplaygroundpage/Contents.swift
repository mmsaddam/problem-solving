//: [Previous](@previous)

import Foundation
class Solution {
	func addBinary(_ a: String, _ b: String) -> String {
		var bS1: [Int]
		var bS2: [Int]
		if a.count >= b.count {
			bS1 = a.map { Int(String($0))! }
			bS2 = b.map { Int(String($0))! }
		} else {
			bS1 = b.map { Int(String($0))! }
			bS2 = a.map { Int(String($0))! }
		}
		
		let sizeDiff = abs(bS2.count - bS1.count)
		
		var previousCarry = 0
		var result = ""
		print(bS1, bS2)
		
		for i in stride(from: bS2.count - 1, through: 0, by: -1) {
			let sum = binarySum(bS1[i + sizeDiff],bS2[i], previousCarry)
			result += String(sum.0)
			previousCarry = sum.1
		}
		
		var i = sizeDiff - 1
		while i >= 0 {
			let sum = binarySum(bS1[i], 0, previousCarry)
			result += String(sum.0)
			previousCarry = sum.1
			i -= 1
		}
		
		if previousCarry == 1 {
			result += "\(1)"
		}
		return String(result.reversed())
	}
	func binarySum(_ a: Int, _ b: Int, _ c: Int) -> (Int, Int) {
		let sum = a + b
		if sum == 2 {
			if c == 1 {
				return (1, 1)
			} else {
				return (0, 1)
			}
		} else if sum == 1 {
			if c == 1 {
				return (0, 1)
			} else {
				return (1, 0)
			}
		} else {
			if c == 1 {
				return (1, 0)
			} else {
				return (0, 0)
			}
		}
	}
}

Solution().addBinary("1", "111")


//class Solution {
//	func longestCommonPrefix(_ strs: [String]) -> String {
//		guard strs.count > 0 else { return "" }
//
//		let prefixStr = Array(strs[0])
//		var prefixLenth = prefixStr.count
//
//		for str in strs {
//			let ary = Array(str)
//			prefixLenth = min(ary.count, prefixLenth)
//
//			for j in 0..<prefixLenth {
//				if ary[j] != prefixStr[j] {
//					prefixLenth = j
//					break
//				}
//			}
//		}
//
//		return String(prefixStr[0..<prefixLenth])
//	}
//}
//
//Solution().longestCommonPrefix(["lpqabc","nhyabc"])

//public func solution(_ S : inout String) -> String {
//	let digitOnlyCharacters = Array(S.components(separatedBy: CharacterSet.decimalDigits.inverted)
//				.joined())
//
//	var threeDividerCount = digitOnlyCharacters.count / 3
//	let threeRemainder = digitOnlyCharacters.count % 3
//
//	if threeRemainder == 1 {
//		threeDividerCount -= 1
//	}
//
//	var result: [Character] = []
//
//	for i in 0..<digitOnlyCharacters.count {
//		result.append(digitOnlyCharacters[i])
//		if threeDividerCount > 0 && (i+1) % 3 == 0   {
//			threeDividerCount -= 1
//			result.append("-")
//		}
//	}
//
//	if threeRemainder == 1 {
//		result.insert("-", at: result.count - 2)
//	}
//
//	if result.last == Character("-") {
//		result.removeLast()
//	}
//
//	return String(result)
//}
//
////var str = "00-44  48 5555 83612"
//var str = "555372654"
//solution(&str)

//func solution(_ N: Int, A: [Int], B: [Int]) -> Bool {
//	var adjacentTable: [Int : Bool] = [:]
//	for i in 0..<A.count {
//		let node = A[i]
//		let adjacent = B[i]
//		adjacentTable[node + adjacent] = true
//	}
//	var startingNode = 1
//
//	while startingNode < N {
//		let hasPathToNextNode = adjacentTable[startingNode + (startingNode + 1)] ?? false
//		if hasPathToNextNode {
//			startingNode += 1
//		} else {
//			return false
//		}
//	}
//
//
//	return true
//}
//
////var a = [1, 2, 4, 4, 3]
////var b = [2, 3, 1, 3, 1]
//
//var a = [1, 1]
//var b = [2, 3]
//
//_ = solution(3, A: a, B: b)

//func caesarCipherEncryptor(string: String, key: UInt32) -> String {
//	var cipherString = ""
//	let zAsciValue: UInt32 = "z".unicodeScalars.first!.value
//	let aAsciValue: UInt32 = "a".unicodeScalars.first!.value
//
//	for char in string {
//		var currentAsciValue = char.unicodeScalars.first!.value + key
//		if currentAsciValue > zAsciValue {
//			currentAsciValue = aAsciValue + (currentAsciValue % zAsciValue) - 1
//		}
//
//		let encodedString = String(UnicodeScalar(UInt8(currentAsciValue)))
//		cipherString.append(encodedString)
//
//	}
//	return cipherString
//}
//
//
//_ = caesarCipherEncryptor(string: "xyz", key: 2)

//func superReducedString(s: String) -> String {
//	var stack: [Character] = []
//	for char in s {
//		if let first = stack.first, first == char {
//			stack.remove(at: 0)
//		} else {
//			stack.insert(char, at: 0)
//		}
//	}
//	return String(stack.reversed())
//}
//
//superReducedString(s: "baab")

//func minimumNumber(n: Int, password: String) -> Int {
//	let missingCount = missingCharacters(password)
//		if n < 6 {
//			return missingCount + (6 - missingCount - n)
//			// (6 - 3) + missingCount
//			//  2 + (6 - 2 - 3)
//			// // aBb
//			// // digit
//			// // special
//		} else {
//		   return missingCount
//		}
//
//}
//
//func missingCharacters(_ password: String) -> Int {
//	var count = 0
//	let capitalLetterRegEx  = ".*[A-Z]+.*"
//	let matchCapitalPredicate = NSPredicate(format:"SELF MATCHES %@", capitalLetterRegEx)
//	let hasCapitalLetters = matchCapitalPredicate.evaluate(with: password)
//	if !hasCapitalLetters {
//		count += 1
//	}
//
//	let digitRegEx  = ".*[0-9]+.*"
//	let dititPredicate = NSPredicate(format:"SELF MATCHES %@", digitRegEx)
//	let hasDigit = dititPredicate.evaluate(with: password)
//	if !hasDigit {
//		count += 1
//	}
//
//	let specialCharacterRegEx  = ".*[!&^%$#@()/]+.*"
//	let specialCharacterPredicate = NSPredicate(format:"SELF MATCHES %@", specialCharacterRegEx)
//	let hasSpecialCharacter = specialCharacterPredicate.evaluate(with: password)
//	if !hasSpecialCharacter {
//		count += 1
//	}
//	return count
//}
//
//minimumNumber(n: 1, password: "aA")


func caesarCipher(s: String, k: Int) -> String {
	let capitalRange = 65...90
	let smallRange = 97...122
	var assciVlaues = Array(s).map { Int($0.asciiValue!) }
	let k = k % 26
	assciVlaues = assciVlaues.map {
		if capitalRange.contains($0) {
			if $0 + k > 90 {
				return 64 + ($0 + k) % 90
			} else {
				return $0 + k
			}
			
		} else if smallRange.contains($0) {
			if $0 + k > 122 {
				return 96 + ($0 + k) % 122
			} else {
				return $0 + k
			}
		} else {
			return $0
		}
	}
	return assciVlaues.map { String(UnicodeScalar($0)!) }.reduce("", +)
}
let input = "1X7T4VrCs23k4vv08D6yQ3S19G4rVP188M9ahuxB6j1tMGZs1m10ey7eUj62WV2exLT4C83zl7Q80M"
let result = caesarCipher(s: input, k: 27)
print(result)
print("1Y7U4WsDt23l4ww08E6zR3T19H4sWQ188N9bivyC6k1uNHAt1n10fz7fVk62XW2fyMU4D83am7R80N" == result)
