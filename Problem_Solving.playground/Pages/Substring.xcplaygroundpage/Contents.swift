//: [Previous](@previous)

import Foundation

func findSubString(_ string: String) -> [String] {
	var subsStrings: [String] = []
	for i in 0..<string.count {
		for j in i..<string.count {
			let index1 = string.index(string.startIndex, offsetBy: i)
			let index2 = string.index(string.startIndex, offsetBy: j + 1)
			let subStr = String(string[index1..<index2])
			subsStrings.append(subStr)
		}
	}
	return subsStrings
}

print(findSubString("abcd"))
//: [Next](@next)

func reverseWordsInString(_ string: String) -> String {
	var indexedString = Array(string)
	var words: [String] = []
	var startWard = 0
	for (idx, char) in indexedString.enumerated() {
		if char == " " {
			words.append(String(indexedString[startWard..<idx]))
			startWard = idx
		} else if indexedString[startWard] == " " {
			words.append(" ")
			startWard = idx
		}
	}
	words.append(String(indexedString[startWard...]))
	
	var start = 0
	var end = words.count - 1
	
	while start < end {
		(words[start], words[end]) = (words[end], words[start])
		start += 1
		end -= 1
	}
	
	return words.joined(separator: "")
}



reverseWordsInString("the name of the country is bd")
