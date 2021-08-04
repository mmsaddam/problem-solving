//: [Previous](@previous)

import Foundation

func minimumBribes(q: [Int]) -> Void {
	var count = 0
	for i in stride(from: q.count - 1, through: 0, by: -1) {
		if (q[i] - (i + 1) > 2) {
			print("Too chaotic")
			return;
		}
		let lowerB =  max(0, q[i] - 2)
		if lowerB < i {
			for j in max(0, q[i] - 2)..<i {
				if q[j] > q[i] {
					count += 1
				}
			}
		}
		
	}
	return print(count)
}

//1, 2, 5, 3, 4, 7, 8, 6
minimumBribes(q: [1, 2, 5, 3, 4, 7, 8, 6])

//: [Next](@next)
