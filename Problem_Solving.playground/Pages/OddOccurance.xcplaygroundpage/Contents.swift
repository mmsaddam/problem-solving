//: [Previous](@previous)

import Foundation

func solution(_ A : inout [Int]) -> Int {
	var lookupTable: [Int : Int] = [:]
	var oddCandidate: Int?
	
	A.forEach {
		lookupTable[$0] = (lookupTable[$0] ?? 0) + 1
		let occurance = lookupTable[$0] ?? 0
		if occurance % 2 != 0 {
			oddCandidate = $0
		}
	}
	for (key, value) in lookupTable {
		if value % 2 != 0 {
			return key
		}
	}
	return 0
}

var array = [1,9,3,9,3,9,7,9,7]
_ = solution(&array)
