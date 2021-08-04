//: [Previous](@previous)

import Foundation

@available (macOS 10.15, * )
extension String {
	subscript(idx: Int) -> String {
		String(self[index(startIndex, offsetBy: idx)])
	}
}


public func solution(_ S : inout String, _ P : inout [Int], _ Q : inout [Int]) -> [Int] {
	var row = Array(repeating: 0, count: S.count + 1)
	var prefixSums = [[Int]]()
	prefixSums.append(row)
	prefixSums.append(row)
	prefixSums.append(row)
	
	var i = 0
	for char in S {
		var a = 0, c = 0, g = 0
		let str = String(char)
		if str == "A" {
			a = 1
		}
		if str  == "C" {
			c = 1
		}
		if str == "G" {
			g = 1
		}
		prefixSums[0][i + 1] = prefixSums[0][i] + a
		prefixSums[1][i + 1] = prefixSums[1][i] + c
		prefixSums[2][i + 1] = prefixSums[2][i] + g
		i += 1
	}
	print(prefixSums)
	var result = [Int]()
	
	for i in 0..<P.count {
		var fromIdx = P[i]
		var toIdx = Q[i] + 1
		if prefixSums[0][toIdx] - prefixSums[0][fromIdx] > 0 {
			result.append(1)
		} else if prefixSums[1][toIdx] - prefixSums[1][fromIdx] > 0 {
			result.append(2)
		} else if prefixSums[2][toIdx] - prefixSums[2][fromIdx] > 0 {
			result.append(3)
		} else {
			result.append(4)
		}
	}
	
	
	return result
}

var S = "CAGCCTA"
var P = [2, 5, 0]
var Q = [4, 5, 6]

solution(&S, &P, &Q)

//: [Next](@next)
