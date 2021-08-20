//: [Previous](@previous)

import Foundation

class Program {
  func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
    guard !array.isEmpty else { return [] }
    var left = 0
    var right = array.count - 1
    
    while left < right {
        while left < right && array[left] != toMove {
            left += 1
        }
        while right > left && array[right] == toMove {
            right -= 1
        }
        let temp = array[right]
        array[right] = array[left]
        array[left] = temp
    }
    
    return array
  }
}


//class Program {
//    // O(n) time | O(1) space
//  func moveElementToEnd(_ array: inout [Int], _ toMove: Int) -> [Int] {
//    var left = 0
//    var right = array.count - 1
//
//    while left < right {
//        while left < right, array[right] == toMove {
//            right -= 1
//        }
//
//        if array[left] == toMove {
//            let temp = array[right]
//            array[right] = array[left]
//            array[left] = temp
//        }
//
//        left += 1
//
//    }
//
//    return array
//  }
//}


var input = [2, 1, 2, 2, 2, 3, 4, 2]

let result = Program().moveElementToEnd(&input, 2)
print(result)

//: [Next](@next)
