import Foundation


public func kthLargest(_ array: inout [Int], k: Int) -> Int {
	var mutableArray = array
	var startIndex = 0
	var endIndex = array.count - 1
	return quickSortHelper(&mutableArray, &startIndex, &endIndex, k - 1)
}

fileprivate func quickSortHelper(
	_ array: inout [Int],
	_ startIndex: inout Int,
	_ endIndex: inout Int,
	_ k: Int
) -> Int {
	
	while true {
		let pvot = startIndex
		var leftPointer = pvot + 1
		var rightPointer = endIndex
		
		while leftPointer <= rightPointer {
			if array[leftPointer] < array[pvot], array[rightPointer] > array[pvot] {
				(array[leftPointer], array[rightPointer]) = (array[rightPointer], array[leftPointer])
			}
			if array[leftPointer] >= array[pvot] {
				leftPointer += 1
			}
			if array[rightPointer] <= array[pvot] {
				rightPointer -= 1
			}
		}
		
		(array[rightPointer], array[pvot]) = (array[pvot], array[rightPointer])
		
		if rightPointer == k {
			return array[rightPointer]
		} else if rightPointer > k {
			endIndex = rightPointer - 1
		} else {
			startIndex = rightPointer + 1
		}
		
	}
	
}
