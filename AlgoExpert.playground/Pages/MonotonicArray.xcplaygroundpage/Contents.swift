//: [Previous](@previous)

import Foundation

class Program {
    func isMonotonic(array: [Int]) -> Bool {
        if array.count <= 2 {
            return true
        }
        
        var direction = (array[0] - array[array.count - 1])
        
        for i in 1..<array.count {
            if direction == 0 {
                direction = array[i-1] - array[i]
                continue
            }
            let currDirection = array[i-1] - array[i]
            
            if direction > 0 {
                if currDirection < 0 {
                    return false
                }
            } else {
                if currDirection > 0 {
                    return false
                }
            }
        }
        
        return true
    }
}

let input = [1, 1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 8, 9, 10, 11]
let result = Program().isMonotonic(array: input)
print(result)

//: [Next](@next)
