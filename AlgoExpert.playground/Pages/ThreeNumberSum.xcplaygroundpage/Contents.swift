//: [Previous](@previous)

import Foundation

//class Program {
//    /// O(n^3* n log n) time | O(n)
//
//    func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
//        var result:[[Int]] = []
//        for i in 0..<array.count - 1 {
//            for j in i+1..<array.count - 1 {
//                for k in j+1..<array.count {
//                    if array[i] + array[j] + array[k] == targetSum {
//                        let singleSum: [Int] = [array[i], array[j], array[k]]
//                        result.append(singleSum.sorted())
//                    }
//                }
//            }
//        }
//        return result.sorted { $0[0] < $1[0] && $0[1] < $1[1] && $0[2] < $1[2] }
//
//    }
//}

class Program {
    /// O(nlogn + n^2) = O(n^2) tiime |
    func threeNumberSum(array: inout [Int], targetSum: Int) -> [[Int]] {
        array = array.sorted()
        
        var resultSum:[[Int]] = []
        var currIdx = 0
        while currIdx < array.count - 1 {
            var left = currIdx + 1
            var right = array.count - 1
            
            while left < right {
                let currSum = array[currIdx] + array[left] + array[right]
                if currSum == targetSum {
                    let sumCandidates = [array[currIdx], array[left], array[right]]
                    resultSum.append(sumCandidates)
                    left += 1
                    right -= 1
                } else if currSum > targetSum {
                    right -= 1
                } else if currSum < targetSum{
                    left += 1
                }
            }
            currIdx += 1
        }
        return resultSum
    }
}

var input = [12, 3, 1, 2, -6, 5, -8, 6]

let result = Program().threeNumberSum(array: &input, targetSum: 0)
print(result)

//: [Next](@next)
