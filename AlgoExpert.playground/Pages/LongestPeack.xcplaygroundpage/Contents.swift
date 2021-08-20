//: [Previous](@previous)

import Foundation

class Program {
    func longestPeak(array: [Int]) -> Int {
        var longestLength = 0
        var i = 1
        while i < array.count - 1 {
            let isPick = array[i-1] < array[i] &&  array[i] > array[i+1]
            if !isPick {
                i += 1
                continue
            }
            
            
            var rightIdx = i + 2
            while rightIdx < array.count, array[rightIdx] < array[rightIdx-1]  {
                rightIdx += 1
            }
            var leftIdx = i - 2
            while leftIdx >= 0, array[leftIdx] < array[leftIdx+1]  {
                leftIdx -= 1
            }
            let pickLength = (rightIdx - leftIdx) - 1
            if longestLength < pickLength {
                longestLength = pickLength
            }
            
            i = rightIdx
        }
        return longestLength
    }
}

var input = [1, 2, 3, 0, -1, -2, 4]
_ = Program().longestPeak(array: input)

//: [Next](@next)
