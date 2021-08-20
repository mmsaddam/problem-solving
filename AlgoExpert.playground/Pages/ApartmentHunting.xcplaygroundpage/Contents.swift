//: [Previous](@previous)

import Foundation

class Program {
    //O((b*r*b) +b)
    // O(b^2*r +b)
    // O(b^2*r)
    
    // O(b^2 * r) time | O(b) where b is the number of blocks and r is the number of requirements
    
    func apartmentHunting(_ blocks: [[String: Bool]], _ requirements: [String]) -> Int {
        var maxDistanceAtBlock = Array(repeating: -Int.max, count: blocks.count)
        
        for i in 0..<blocks.count { // b times
            for req in requirements { // r tiems
                var closestReqDistance = Int.max
                for j in 0..<blocks.count { // b times
                    if blocks[j][req] == true {
                        closestReqDistance = min(closestReqDistance, distanceBetween(i, j))
                    }
                }
                maxDistanceAtBlock[i] = max(maxDistanceAtBlock[i], closestReqDistance)
            }
            
        }
        
        return getIndexAtMinValue(maxDistanceAtBlock) // b times
    }
    private func distanceBetween(_ a: Int, _ b: Int) -> Int {
        abs(a - b)
    }
    private func getIndexAtMinValue(_ array: [Int]) -> Int {
        var minValueIndex = 0
        var minValue = Int.max
        for i in 1..<array.count {
            if array[i] < minValue {
                minValue = array[i]
                minValueIndex = i
            }
        }
        return minValueIndex
    }
}
//
//class Program {
//    /// O(b*r) time | O(b*r) space
//  func apartmentHunting(_ blocks: [[String: Bool]], _ requirements: [String]) -> Int {
//    /// O(b*r) time | O(b*r) space
//    let minDistancesFromBlocks = requirements.map { getMinDistancesFromBlocks(blocks, requirement: $0) }
//
//    var maxDistanceAtBlocks = Array(repeating: -1, count: blocks.count) // O(b) time | O(b) space
//    for i in 0 ..< blocks.count { // O(b) time
//        let minDistances = minDistancesFromBlocks.map { $0[i] } // O(r) case read in constant time | O(r) space
//        if let max = minDistances.max() {
//            maxDistanceAtBlocks[i] = max
//        }
//    }
//    return getIndexAtMinValue(maxDistanceAtBlocks) // O(b)
//  }
//
//    func getMinDistancesFromBlocks(_ blocks: [[String: Bool]], requirement: String) -> [Int] {
//        var minDistances = Array(repeating: -1, count: blocks.count)
//        var closestIndex = Int.max
//
//        for i in 0 ..< blocks.count {
//            if let available = blocks[i][requirement], available {
//                closestIndex = i
//            }
//            minDistances[i] = getDifference(closestIndex, i)
//        }
//
//        for i in (0 ..< blocks.count).reversed() {
//            if let available = blocks[i][requirement], available {
//                closestIndex = i
//            }
//            minDistances[i] = min(minDistances[i], getDifference(closestIndex, i))
//        }
//        return minDistances
//    }
//
//    func getDifference(_ a: Int, _ b: Int) -> Int {
//        return abs(a - b)
//    }
//
//    func getIndexAtMinValue(_ array: [Int]) -> Int {
//        var minValueIndex = 0
//        var minValue = Int.max
//        for i in 1..<array.count {
//            if array[i] < minValue {
//                minValue = array[i]
//                minValueIndex = i
//            }
//        }
//        return minValueIndex
//    }
//
//}

let input1 = [
    [
        "gym": false,
        "school": true,
        "store": false
    ],
    [
        "gym": true,
        "school": false,
        "store": false
    ],
    [
        "gym": true,
        "school": true,
        "store": false
    ],
    [
        "gym": false,
        "school": true,
        "store": false
    ],
    [
        "gym": false,
        "school": true,
        "store": true
    ]
]

var input = [
    [
      "foo": true,
      "gym": false,
      "kappa": false,
      "office": true,
      "school": true,
      "store": false
    ],
    [
      "foo": true,
      "gym": true,
      "kappa": false,
      "office": false,
      "school": false,
      "store": false
    ],
    [
      "foo": true,
      "gym": true,
      "kappa": false,
      "office": false,
      "school": true,
      "store": false
    ],
    [
      "foo": true,
      "gym": false,
      "kappa": false,
      "office": false,
      "school": true,
      "store": false
    ],
    [
      "foo": true,
      "gym": true,
      "kappa": false,
      "office": false,
      "school": true,
      "store": false
    ],
    [
      "foo": true,
      "gym": false,
      "kappa": false,
      "office": false,
      "school": true,
      "store": true
    ]
  ]

let req = ["gym", "school", "store"]

Program().apartmentHunting(input1, req)
