import Foundation

func solution(_ start: Int, _ end_num: Int) -> [Int] {
    guard start >= end_num else {
        return []
    }
    
    var result: [Int] = []
    for i in (end_num...start).reversed() {
        result.append(i)
    }
    
    return result
}