import Foundation

func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    var result: [Int] = []
    
    for interval in intervals {
        let start = interval[0]
        let end = interval[1]
        
        result.append(contentsOf: Array(arr[start...end]))
    }
    
    return result
}
