//: [Previous](@previous)

import Foundation
/*
/// O(n^2) time | O(1) space

func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    for i in 0..<array.count - 1 {
        for j in i+1..<array.count - 1 {
            if array[i] + array[j] == targetSum {
                return [array[i], array[j]]
            }
        }
    }
    return []
}
*/
/// O(n) time | O(n) space
func twoNumberSum(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var mapTable: [Int : Int] = [:]
    for value in array {
        let nexInt = targetSum - value
        if let val = mapTable[value] {
            return [val, value]
        }
        mapTable[nexInt] = value
    }
    return []
}


var input = [3, 5, -4, 8, 11, 1, -1, 6]
_ = twoNumberSum(&input, 10)

//: [Next](@next)
