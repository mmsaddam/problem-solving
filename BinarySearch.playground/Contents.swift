import UIKit

func binarySearch(_ array: [Int], _ target: Int) {
	var low = 0
	var high = array.count - 1
	
	while low <= high {
		let mid = low + (high - low) / 2
		if array[mid] == target {
			print("Found")
			return
		} else if array[mid] < target {
			low = mid + 1
		} else {
			high = mid - 1
		}
 	}
	print("Not Found")
}

func binarySearch(_ array: [Int], _ low: Int, _ high: Int, _ target: Int) {
	if low > high {
		print("Not Found")
		return
	}
	
	let mid = low + (high - low) / 2
	
	if array[mid] == target {
		print("Found")
		return
	} else if array[mid] < target {
		binarySearch(array, mid + 1, high, target)
	} else {
		binarySearch(array, low, mid - 1, target)
	}
	
}


var array = Array(1...10)
(1...12).forEach {
//	binarySearch(array, $0)
	binarySearch(array, 0, array.count - 1, $0)
}


