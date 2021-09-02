import Foundation


public func wiggleSort(_ nums: inout [Int]) {
	nums.sort()
	var out = Array(repeating: 0, count: nums.count)
	let count = nums.count
	
	for i in stride(from: 0, to: count, by: 2) {
		out[i] = nums[(count - 1 - i) / 2]
	}
	print(out)
	for i in stride(from: 1, to: count, by: 2) {
		out[i] = nums[count - 1 - i / 2]
	}
	print(out)
	for i in 0..<count {
		nums[i] = out[i]
	}
}

