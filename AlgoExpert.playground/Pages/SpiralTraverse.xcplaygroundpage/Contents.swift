//: [Previous](@previous)

import Foundation

class Program {
//    func spiralTraverse(array: [[Int]]) -> [Int] {
//        var result: [Int] = []
//
//        var startRow = 0, endRow = array.count - 1
//        var startCol = 0, endCol = array[0].count - 1
//
//        while startRow <= endRow, startCol <= endCol {
//            for col in stride(from: startCol, through: endCol, by: 1) {
//                result.append(array[startRow][col])
//            }
//
//            for row in stride(from: startRow + 1, through: endRow, by: 1) {
//                result.append(array[row][endCol])
//            }
//
//            for col in stride(from: endCol - 1, through: startCol, by: -1) {
//                if startRow == endRow {
//                    break
//                }
//                result.append(array[endRow][col])
//            }
//
//            for row in stride(from: endRow - 1, through: startRow + 1, by: -1) {
//                if startCol == endCol {
//                    break
//                }
//                result.append(array[row][startCol])
//            }
//
//            startRow += 1
//            startCol += 1
//            endRow -= 1
//            endCol -= 1
//        }
//
//        return result
//
//    }
    
    func spiralTraverse(array: [[Int]]) -> [Int] {
        var result: [Int] = []
        fillSpiral(array, 0, array.count - 1, 0, array[0].count - 1, &result)
        return result
    }
    
    func fillSpiral(
        _ array: [[Int]],
        _ startRow: Int,
        _ endRow: Int,
        _ startCol: Int,
        _ endCol: Int,
        _ result: inout [Int]
    ) {
        
        if startRow > endRow || startCol > endCol {
            return
        }
        
        for col in stride(from: startCol, through: endCol, by: 1) {
            result.append(array[startRow][col])
        }
        
        for row in stride(from: startRow + 1, through: endRow, by: 1) {
            result.append(array[row][endCol])
        }
        
        for col in stride(from: endCol - 1, through: startCol, by: -1) {
            if startRow == endRow {
                break
            }
            result.append(array[endRow][col])
        }
        
        for row in stride(from: endRow - 1, through: startRow + 1, by: -1) {
            if startCol == endCol {
                break
            }
            result.append(array[row][startCol])
        }
        
        fillSpiral(
            array,
            startRow + 1,
            endRow - 1,
            startCol + 1,
            endCol - 1,
            &result
        )
        
    }

}

let input = [
    [1, 2, 3, 45],
    [8, 9, 4, 43],
    [7, 6, 5, 45]
]

let result = Program().spiralTraverse(array: input)
print(result)
