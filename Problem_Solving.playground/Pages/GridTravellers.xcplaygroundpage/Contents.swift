//: [Previous](@previous)

import Foundation


func gridTravellers(_ m: Int, _ n: Int, _ memory: [String : Int] = [:]) -> Int {
	var memory = memory
	let key = "\(m),\(n)"
	if let oldGrid = memory[key] {
		return oldGrid
	}
	if m == 1 && n == 1 {
		return 1
	}
	if m == 0 || n == 0 {
		return 0
	}
	memory[key] = gridTravellers(m - 1 , n, memory) + gridTravellers(m, n - 1, memory)
	return memory[key]!
}

//func gridTravellers(_ width: Int, _ height: Int) -> Int {
//	var numberOfWays = Array(repeating: [Int](), count: height + 1)
//	for i in 0..<numberOfWays.count {
//		numberOfWays[i] = Array(repeating: 0, count: width + 1)
//	}
//
//	for idx in 1...width {
//		for idy in 1...height {
//			if idx == 1 || idy == 1 {
//				numberOfWays[idy][idx] = 1
//			} else {
//				numberOfWays[idy][idx] = numberOfWays[idy - 1][idx] + numberOfWays[idy][idx - 1]
//			}
//		}
//	}
//
//	print(numberOfWays)
//	return numberOfWays[height][width]
//}

_ = gridTravellers(3, 3)
_ = gridTravellers(2, 2)
_ = gridTravellers(18, 18)
