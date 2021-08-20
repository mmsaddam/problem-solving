
/// O(n) time | O(k) space where n is the number of matches and k is the number of teams

let HOME_TEAM_WON = 1

func tournamentWinner(_ competitions: [[String]], _ results: [Int]) -> String {
    var resultTable: [String : Int] = [:]
    var tournamentWinner = ""
    var maxScore = 0
    
    for index in 0..<competitions.count {
        let homeTeam = competitions[index].first!
        let awayTeam = competitions[index].last!
        
        let matchWinner = results[index] == HOME_TEAM_WON ? homeTeam : awayTeam
        
        let previousScore = resultTable[matchWinner] ?? 0
        let newScore = previousScore + 3
        resultTable[matchWinner] = newScore
        
        if newScore >= maxScore {
            maxScore = newScore
            tournamentWinner = matchWinner
        }
        print(resultTable)
    }
    
    return tournamentWinner
}


let input =  [
    ["HTML", "Java"],
    ["Java", "Python"],
    ["Python", "HTML"],
    ["C#", "Python"],
    ["Java", "C#"],
    ["C#", "HTML"],
    ["SQL", "C#"],
    ["HTML", "SQL"],
    ["SQL", "Python"],
    ["SQL", "Java"]
]

let results = [0, 1, 1, 1, 0, 1, 0, 1, 1, 0]

tournamentWinner(input, results)


class Program {
    func longestPeak(array: [Int]) -> Int {
        if array.count < 3 {
            return -1
        }
        var idx = 1
        var longestPick = 0
        
        while idx < array.count - 1 {
            let isPeak = (array[idx-1] < array[idx]) && (array[idx] > array[idx+1])
            if !isPeak {
                idx += 1
                continue
            }
            var leftIdx = idx - 2
            var rightIdx = idx + 2
            while leftIdx >= 0, array[leftIdx + 1] > array[leftIdx] {
                leftIdx -= 1
            }
            while rightIdx < array.count, array[rightIdx - 1] > array[rightIdx] {
                rightIdx += 1
            }
            let pickLength = (rightIdx - leftIdx) - 1
            longestPick = max(longestPick, pickLength)
            idx = rightIdx
        }
        
        return longestPick
    }
}

Program().longestPeak(array: [1,2,3,3,4,0,10,6,5,-1,-3,2,3])
