//: [Previous](@previous)

import Foundation

func solution(_ A : inout [Int], _ X: Int) -> Int {
	var lookupTable: [Int : Bool] = [:]
	
	for sec in 0..<A.count {
		let position = A[sec]
		if position <= X {
			lookupTable[position] = true
			if lookupTable.count == X {
				return sec
			}
		}
	}

	return -1
}

var array = [1, 2, 1, 4, 2, 3, 5, 4]
_ = solution(&array, 5)


//: [Next](@next)
