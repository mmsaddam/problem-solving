//: [Previous](@previous)

import Foundation

class Program {
    func smallestDifference(arrayOne: inout [Int], arrayTwo: inout [Int]) -> [Int] {
        arrayOne.sort()
        arrayTwo.sort()
        
        var idxOne = 0
        var idxTwo = 0
        
        var smallesDiff = Int.max
        var smallestPair: [Int] = []
        
        while idxOne < arrayOne.count && idxTwo < arrayTwo.count {
            let diff = abs(arrayOne[idxOne] - arrayTwo[idxTwo])
            if smallesDiff > diff {
                smallesDiff = diff
                smallestPair = [arrayOne[idxOne], arrayTwo[idxTwo]]
            }
            if arrayOne[idxOne] < arrayTwo[idxTwo] {
                idxOne += 1
            } else {
                idxTwo += 1
            }
        }
        
        return smallestPair
    }
}

var arrayOne = [-1, 5, 10, 20, 28, 3]
var arrayTwo = [26, 134, 135, 15, 17]

let result = Program().smallestDifference(arrayOne: &arrayOne, arrayTwo: &arrayTwo)

//: [Next](@next)
