//: [Previous](@previous)

import Foundation

func nonConstructibleChange(_ coins: inout [Int]) -> Int {
    guard !coins.isEmpty else { return 1}
    coins = coins.sorted(by: < )
    var change = 0
    for coin in coins {
        if coin > change + 1 {
            return change + 1
        } else {
            change += coin
        }
    }
    return change + 1
}


var input = [5, 7, 1, 1, 2, 3, 22]
nonConstructibleChange(&input)
