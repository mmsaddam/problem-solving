import Foundation

public func quickSortDecending(_ array: inout [Int]) -> [Int] {
	var mutableArray = array
	quickSortHelper(&mutableArray, 0, array.count - 1)
	return mutableArray
}

fileprivate func quickSortHelper(_ array: inout [Int], _ startIndex: Int, _ endIndex: Int) {
	if startIndex >= endIndex {
		return
	}
	
	var pvot = startIndex
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
	
	let leftLength = rightPointer - 1 - startIndex
	let rightlength = endIndex - rightPointer + 1
	
	if leftLength > rightlength {
		quickSortHelper(&array, startIndex, rightPointer - 1)
		quickSortHelper(&array, rightPointer + 1, endIndex)
	} else {
		quickSortHelper(&array, rightPointer + 1, endIndex)
		quickSortHelper(&array, startIndex, rightPointer - 1)
	}
	
}
