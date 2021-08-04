//: [Previous](@previous)

import Foundation

class Program {
	func generateDocument(_ characters: String, _ document: String) -> Bool {
		 guard document.count > 0 else { return true }
			var inputCharFrequecyMap: [Character: Int] = [:]
			
			for char in characters {
				if let oldValue = inputCharFrequecyMap[char] {
					inputCharFrequecyMap[char] = oldValue + 1
				} else {
					inputCharFrequecyMap[char] = 1
				}
				
			}
		print(inputCharFrequecyMap)
			
			for char in document {
				if inputCharFrequecyMap[char] == nil || inputCharFrequecyMap[char]! <= 0 {
					return false
				}
				inputCharFrequecyMap[char] = inputCharFrequecyMap[char]! - 1
			}
		print(inputCharFrequecyMap)
		return true
	  }
}

//: [Next](@next)
_ = Program().generateDocument("aheaolabbhb","hello")
