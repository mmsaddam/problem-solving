import UIKit

/*
/// O(n) time | O(n) space

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    let length = array.count
    var sqrArry = [Int](repeating: -1, count: length)
    var left = 0
    var right = length - 1
    
    for idx in (0..<length).reversed() {
        if abs(array[left]) > abs(array[right]) {
            sqrArry[idx] = array[left] * array[left]
            left += 1
        } else {
            sqrArry[idx] = array[right] * array[right]
            right -= 1
        }
    }
    return sqrArry
}
 */

func sortedSquaredArray(_ array: [Int]) -> [Int] {
    return array.map { $0*$0 }.sorted()
}

sortedSquaredArray([-10, -5, 0, 5, 10])
