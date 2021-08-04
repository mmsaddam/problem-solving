//: [Previous](@previous)

import Foundation

func canSum(_ targetSum: Int, _ numbers: [Int], _ memory: [Int : Bool] = [:]) -> Bool {
	var memory = memory
	if let oldOne = memory[targetSum] {
		return oldOne
	}
	if targetSum == 0 {
		return true
	}
	if targetSum < 0 {
		return false
	}
	for number in numbers {
		let key = targetSum - number
		memory[key] = canSum(key, numbers, memory)
	
		if memory[targetSum - number]! {
			return true
		}
	}
	memory[targetSum] = false
	return false
}


canSum(7, [2, 2, 3])
canSum(5, [2, 1])
canSum(11, [6, 6, 1])
canSum(100, [7, 14])


func howSum(_ targetSum: Int, _ numbers: [Int]) -> [Int]? {
	if targetSum == 0 {
		return []
	}
	if targetSum < 0 {
		return nil
	}
	var shortestCombinations: [Int]?
	
	for number in numbers {
		let remainder = targetSum - number
		let resultForRemainder = howSum(remainder, numbers)
		if resultForRemainder != nil {
			let newCombination = resultForRemainder! + [number]
			if shortestCombinations == nil {
				shortestCombinations = newCombination
			} else if shortestCombinations!.count > newCombination.count {
				shortestCombinations = newCombination
			}
		}
	}
	
	return shortestCombinations
}

howSum(8, [5, 3, 4, 1, 8])
