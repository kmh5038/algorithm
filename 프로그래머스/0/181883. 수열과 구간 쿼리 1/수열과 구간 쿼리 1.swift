import Foundation

func solution(_ arr:[Int], _ queries:[[Int]]) -> [Int] {
    var result = arr
    for query in queries {
        let start = query[0]
        let end = query[1]
        for i in start...end {
            result[i] += 1
        }
    }
    return result
}