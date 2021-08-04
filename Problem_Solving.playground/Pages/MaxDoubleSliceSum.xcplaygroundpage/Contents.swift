//: [Previous](@previous)

import Foundation

func solution(_ A: [Int]) -> Int {
	var slice1LocalMax = Array(repeating: 0, count: A.count)
	var slice2LocalMax = Array(repeating: 0, count: A.count)
	
	//start from i=1 because slice can't start at index 0
	
	for i in 1..<A.count - 1 {
		slice1LocalMax[i] = max(slice1LocalMax[i - 1] + A[i], 0);
	}
	var i = A.count - 2
	while i > 0 {
		slice2LocalMax[i] = max(slice2LocalMax[i + 1] + A[i], 0)
		i -= 1
	}
	
	var maxDoubleSliceSum = 0;
	
	//compute sums of all slices to find absolute max
	for i in 1..<A.count - 1 {
		maxDoubleSliceSum = max(maxDoubleSliceSum, slice1LocalMax[i-1] + slice2LocalMax[i+1]);
	}
	
	return maxDoubleSliceSum;
}

//[5, -7, 3, 5, -2, 4, -1]  -> 10
solution([3, 2, 6, -1, 4, 5, -1, 2])
//: [Next](@next)


//: [Next](@next)
