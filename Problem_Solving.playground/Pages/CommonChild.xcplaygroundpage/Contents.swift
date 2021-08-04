//: [Previous](@previous)

import Foundation

/// ABCD
/// ABDC

func longestCommonChild(_ str1: String, _ str2: String) -> Int {
	var s1 = Array(str1)
	var s2 = Array(str2)
	
	var table: [[Int]] = []
	for _ in 1...s1.count + 1 {
		var row = Array(repeating: 0, count: s2.count + 1)
		table.append(row)
	}
	
	for i in 1..<s2.count + 1 {
		for j in 1..<s1.count + 1 {
			if s1[i - 1] == s2[ j - 1] {
				table[i][j] = table[i - 1][j - 1] + 1
			} else {
				table[i][j] = max(table[i][j - 1], table[i - 1][j])
			}
		}
	}
	
	print(table[s1.count][s2.count])
	return table[s1.count][s2.count]
	
}

let s1 = "SHINCHN"
let s2 = "NOHARAA"

longestCommonChild(s1, s2)
